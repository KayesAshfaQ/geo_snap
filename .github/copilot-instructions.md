# GitHub Copilot & Agent Instructions

## Priority Guidelines

When generating code for this repository (GeoSnap):

1. **Version Compatibility**: Detect and respect the exact versions of Flutter, Dart, and libraries (e.g., flutter_bloc, freezed, injectable, fpdart) used in this project.
2. **Codebase Patterns**: Always scan the codebase for established patterns before suggesting new ones.
3. **Architectural Consistency**: Maintain our strict **Feature-Driven Clean Architecture** and established boundaries.
4. **Code Quality**: Prioritize testability, maintainability, and clean code principles.

## Technology Stack

- **Framework**: Flutter
- **State Management**: flutter_bloc + freezed
- **Dependency Injection**: get_it + injectable
- **Routing**: go_router
- **Functional Programming / Error Handling**: fpdart (`TaskEither`)
- **Local Storage**: shared_preferences (with keys managed in `core/constants/storage_keys.dart`)
- **Networking**: dio

## Architecture & Folder Structure

The project follows a **Feature-Driven Clean Architecture**. Each feature must live inside `lib/src/features/<feature_name>/` and be strictly divided into:

### 1. Domain Layer (`domain/`)
- Contains pure Dart code only. No Flutter dependencies.
- **`entities/`**: Business objects (must extend `Equatable`).
- **`repositories/`**: Abstract interfaces returning `TaskEither<Failure, T>`.
- **`usecases/`**: Single-responsibility classes annotated with `@injectable`. Execute using the `call` method.

### 2. Data Layer (`data/`)
- **`models/`**: DTOs using `@freezed`. Must implement `fromJson` and have `toEntity()` / `fromEntity()` mappers.
- **`datasources/`**: Interfaces and implementations for remote (Dio) or local (SharedPreferences) data. Implementations must be annotated with `@LazySingleton(as: InterfaceName)`.
- **`repositories/`**: Implementations of domain repository interfaces. Must be annotated with `@LazySingleton(as: InterfaceName)` and return `TaskEither.tryCatch`.

### 3. Presentation Layer (`presentation/`)
- **`bloc/`**: Contains `flutter_bloc` logic.
  - Events and States must use `@freezed` union classes.
  - BLoCs must be annotated with `@injectable` and depend ONLY on UseCases or Core Services. **Never inject repositories or datasources directly into a BLoC.**
- **`pages/`**: Screen widgets. Must use `BlocProvider` and `BlocBuilder` / `BlocConsumer`.
- **`widgets/`**: Reusable UI components specific to the feature.

## Core Layer (`lib/src/core/`)

- **`di/`**: Dependency injection setup using `injectable` and `get_it`.
- **`error/`**: Contains base `Failure` class and its implementations (e.g., `ServerFailure`, `CacheFailure`).
- **`network/`**: Network configurations and API operations.
  - **`api_client.dart`**: Central point for all API calls and network operations.
- **`router/`**: App routing.
  - **`app_router.dart`**: All routes must be defined here using `go_router`.
- **`services/`**: Abstracted platform/device capabilities and reusable package wrappers.
  - Create services for cross-cutting concerns like `CameraService`, `LocationService`, and `StorageService` (for `shared_preferences`).
- **`theme/`**: Centralized theming (`AppColors`, `AppTheme`). **Never use hardcoded colors in widgets.** Always reference `AppColors`.
- **`constants/`**: App-wide constants.
  - **`storage_keys.dart`**: Local storage / shared-pref keys.
  - All constant strings, URLs, and keys MUST be declared here and reused throughout the app.

## Specialized Skills

- **Feature & Usecase Creation**: Always use the `flutter-my-arch` skill to scaffold new features, usecases, and related layers to ensure consistency with our architectural patterns.

## Coding Standards

### State Management (BLoC)
- **Events**: Must be descriptive and represent user intent or system triggers (e.g., `started`, `capturePressed`).
- **States**: Use union cases (`initial`, `loading`, `loaded`, `error`). Use `maybeWhen` or `when` to handle state transitions in the UI.
- **Logic**: Keep BLoCs focused on orchestrating UseCases. Do not put heavy business logic or geometric calculations directly in the BLoC (delegate to UseCases or Core Services).

### Error Handling
- Use `fpdart` and the `TaskEither<Failure, T>` pattern across all Repositories and UseCases.
- Use `TaskEither.tryCatch` in Repository implementations to convert exceptions into `Failure` objects.
- In the BLoC, handle the `fold` of a `TaskEither` result to emit either an `Error` state or a successful state.

### Dependency Injection
- Always use `injectable` annotations (`@injectable` for UseCases/BLoCs, `@LazySingleton` for Repositories/DataSources/Services).
- Whenever you create or modify an injected class or a freezed model, remind the user to run: `dart run build_runner build --delete-conflicting-outputs`.

### UI & Theming
- Do not use hardcoded hex colors or generic `Colors.*` in widgets.
- Always import `../../../../core/theme/app_colors.dart` (adjust path as needed) and use `AppColors.primary`, `AppColors.success`, etc.

## Project-Specific Guidance
- **Code Consistency**: When generating code, scan the codebase thoroughly. Match the style and patterns of surrounding code.
- **Strict Boundaries**: Respect the boundaries: UI calls BLoC, BLoC calls UseCase, UseCase calls Repository, Repository calls DataSource.
- **Architectural Integrity**: When in doubt, prioritize consistency with existing code over external best practices.
- **Service Reuse**: Before implementing package-specific logic in a feature, check if it should be abstracted into a service in `core/services/`.
- **Constant Usage**: Never hardcode strings or keys that are used in multiple places. Declare them in `core/constants/`.
