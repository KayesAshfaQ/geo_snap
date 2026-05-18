# GeoSnap: Smart Attendance & Advanced Media Sync

GeoSnap is a high-performance Flutter application designed for location-aware attendance tracking and resilient media synchronization. Built with a focus on precision and architectural excellence, it demonstrates advanced device hardware integration and robust state management.

## 🚀 Key Features

- **Geo-Fenced Attendance:** A smart check-in system that only allows attendance marking when within a 50-meter radius of the saved office location.
- **Real-time Proximity Tracking:** Live distance indicator and range status visualization.
- **Clean Architecture:** Strictly decoupled layers ensuring high testability and maintainability.
- **Dynamic Theming:** Centralized color palette and global theme configuration.

## 🏗️ Project Structure & Approaches

The project follows a **Feature-Driven Clean Architecture** combined with the **BLoC (Business Logic Component)** pattern for state management.

### Architecture Highlights:
- **Domain Layer:** Contains pure Dart entities, abstract repository interfaces, and single-responsibility use cases.
- **Data Layer:** Handles infrastructure concerns including DTO models (Freezed), repository implementations, and local data sources (Shared Preferences).
- **Presentation Layer:** Uses `flutter_bloc` with `freezed` union states/events. The UI is built using modular widgets and a centralized `AppTheme`.
- **Dependency Injection:** Powered by `get_it` and `injectable` for seamless service orchestration.

### Key BLoC Classes:
- `AttendanceBloc`: Manages the geolocation stream, geofencing logic, and office configuration state.

### Essential Prompts Used:
- *"Scaffold a Flutter feature 'attendance' using Feature-Driven Clean Architecture with BLoC, Repository, and Injectable."*
- *"Implement a geofencing utility using geolocator that calculates distance in meters and updates the UI state reactively."*
- *"Refactor hardcoded UI colors into a centralized AppColors and AppTheme class following Material 3 standards."*
- *"Create a thread-safe local data source for storing GPS coordinates using SharedPreferences and centralized storage keys."*

## 🛠️ How to Run

Follow these steps to set up and run the project locally:

1. **Prerequisites:**
   - Flutter SDK (latest stable)
   - Android Studio / VS Code with Flutter extension
   - A physical device or emulator with Location Services enabled

2. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/geo_snap.git
   cd geo_snap
   ```

3. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run Code Generation:**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

5. **Launch the App:**
   ```bash
   flutter run
   ```

## 📸 Screenshots

*(Include screenshots of the Attendance Screen and Camera Sync here)*

---
*Developed as part of the App Developer Technical Assessment.*
