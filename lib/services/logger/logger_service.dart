// lib/services/logger/logger_service.dart

/// Uygulama genelinde kullanılacak olan merkezi loglama servisinin sözleşmesi.
abstract class LoggerService {
  /// Bilgilendirme (Info) seviyesi log.
  /// Genel akış bilgileri için kullanılır (örn: "Kullanıcı giriş yaptı.").
  void i(String message);

  /// Hata (Error) seviyesi log.
  /// Yakalanan hatalar ve kritik sorunlar için kullanılır.
  void e(String message, {dynamic error, StackTrace? stackTrace});

  /// Debug seviyesi log.
  /// Sadece geliştirme aşamasında faydalı olan detaylı veriler için kullanılır
  /// (örn: "API'den gelen yanıt: { ... }").
  void d(String message);

  /// Uyarı (Warning) seviyesi log.
  /// Hata olmayan ama beklenmedik durumlar için kullanılır.
  void w(String message);
}
