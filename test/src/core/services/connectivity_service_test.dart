import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geo_snap/src/core/services/connectivity_service.dart';
import 'package:mocktail/mocktail.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  late ConnectivityServiceImpl connectivityService;
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockConnectivity = MockConnectivity();
    connectivityService = ConnectivityServiceImpl(mockConnectivity);
  });

  group('isConnected', () {
    test('should return true when connectivity result is wifi', () async {
      // arrange
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.wifi]);

      // act
      final result = await connectivityService.isConnected();

      // assert
      expect(result, true);
      verify(() => mockConnectivity.checkConnectivity()).called(1);
    });

    test('should return true when connectivity result is mobile', () async {
      // arrange
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.mobile]);

      // act
      final result = await connectivityService.isConnected();

      // assert
      expect(result, true);
    });

    test('should return false when connectivity result is none', () async {
      // arrange
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.none]);

      // act
      final result = await connectivityService.isConnected();

      // assert
      expect(result, false);
    });

    test('should return true when multiple results including wifi', () async {
      // arrange
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.wifi, ConnectivityResult.ethernet]);

      // act
      final result = await connectivityService.isConnected();

      // assert
      expect(result, true);
    });
  });
}
