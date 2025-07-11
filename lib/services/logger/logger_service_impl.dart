// lib/services/logger/logger_service_impl.dart

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart'
    as log; // İsim çakışmasını önlemek için 'as log'
import 'package:test_case/services/logger/logger_service.dart';

// Bu sınıfı, LoggerService arayüzü olarak get_it'e kaydediyoruz.
// LazySingleton: Sadece ilk kullanıldığında oluşturulur ve hep aynı nesne verilir.
@LazySingleton(as: LoggerService)
class LoggerServiceImpl implements LoggerService {
  late final log.Logger _logger;

  LoggerServiceImpl() {
    _logger = log.Logger(
      // Bu filtre, release modunda (uygulama yayınlandığında)
      // debug, info ve warning loglarının konsola basılmasını otomatik engeller.
      filter: log.DevelopmentFilter(), // Sadece geliştirme modunda log basar
      printer: log.PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
      ),
    );
  }

  @override
  void d(String message) {
    // kDebugMode kontrolü, release build'de bu kodun hiç derlenmemesini sağlar.
    if (kDebugMode) {
      _logger.d(message);
    }
  }

  @override
  void e(String message, {dynamic error, StackTrace? stackTrace}) {
    // Hatalar hem debug hem de release modda önemlidir.
    // ProductionFilter kullansaydık bile hatalar loglanırdı.
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  @override
  void i(String message) {
    if (kDebugMode) {
      _logger.i(message);
    }
  }

  @override
  void w(String message) {
    if (kDebugMode) {
      _logger.w(message);
    }
  }
}
