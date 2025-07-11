# Flutter Refactor Sheet

*Kod okunabilirliğini artırmak, tekrarları azaltmak ve proje kurallarına tam uyum sağlamak için adım adım kılavuz.*

---

\## 1 · Yorum Satırlarını Temizle

* Üretime yönelik olmayan tüm tek satır (`//`) ve blok (`/* … */`) yorumları silin.
* **Hariç**: `///` dart‑doc açıklamaları ve `// ignore:` linter direktifleri.

\## 2 · Gereksiz İçe Aktarımları (Imports)

```bash
dart fix --apply      # veya
IDE » Organize Imports
```

* Kullanılmayan import uyarılarını tamamen yok edin.

\## 3 · Widget Parçalama Stratejisi

1. **Dosyayı Tara** – `build` metodu 3+ nested seviye veya dosya > **300 satır** ise bölmeyi düşünün.
2. **Private Widget** – Yalnız o dosyada kullanılıyorsa dosyanın sonunda `_MySection` olarak ekleyin (dosya < 600 satır kalmalı).
3. **Feature‑Specific Widget** – Aynı feature içinde birden çok yerde kullanılıyorsa:
   `features/<feature>/presentation/widgets/<widget>.dart`
4. **Global Shared Widget** – Feature’lar arası ortak ise: `shared/widgets/`
5. **Sınıf > Fonksiyon**: Tüm widget’lar **class** olmalı; yalnız ultra‑basit görseller fonksiyonel kalabilir.

\## 4 · Sabit (Hard‑coded) Değerleri Merkezileştir

* **String & URL** → `constants/` altına (örn. `AppUrls`, `AppStrings`).

```dart
// constants/app_urls.dart
class AppUrls {
  static const String home = '/home';
}
```

* **Renkler & Stiller** → `theme/app_colors.dart`, `theme/app_text_styles.dart`.

\## 5 · Logger Servis Kullanımı
Kodda `print()` **yasak**; yerine `LoggerService` enjekte edilmelidir.

\### Hata Yakalama

```dart
try {
  // API call
} on DioException catch (e, s) {
  _logger.e('API isteği başarısız!', error: e, stackTrace: s);
}
```

\### BLoC Olayı

```dart
on<LogoutButtonPressed>((event, emit) {
  _logger.i('Kullanıcı çıkış yapıyor.');
});
```

\### Kritik Akış

```dart
Future<void> processPayment() async {
  _logger.i('Ödeme başladı');
  final r = await _provider.pay();
  r.isSuccess
      ? _logger.i('Ödeme OK id=${r.id}')
      : _logger.w('Ödeme başarısız: ${r.msg}');
}
```

\## 6 · Kod Temizliği (Dead Code)

* IDE uyarılarını giderin: **unused element**, **dead code** vb.
* Kullanılmayan değişken, parametre, fonksiyon, sınıfları silin.

\## 7 · Dosya Kuralları

| Kural       | Limit             |
| ----------- | ----------------- |
| Maks. satır | **600** / .dart   |
| Dosya adı   | `snake_case.dart` |
| Sınıf adı   | `PascalCase`      |

\## 8 · Test

* Otomatik test zorunlu değil.
* Refactor sonrası sayfayı **manuel** derleyip çalıştırın.

---

\## Check‑list 

| Adım                             | Durum |
| -------------------------------- | ----- |
| Yorum satırları temizlendi       | ☐     |
| Unused imports kaldırıldı        | ☐     |
| Widget'lar bölündü               | ☐     |
| Sabit String/URL taşındı         | ☐     |
| Renk/TextStyle sabitleri taşındı | ☐     |
| Logger kullanımı eklendi         | ☐     |
| Dead code silindi                | ☐     |
| Dosya boyutları kontrol edildi   | ☐     |

> **Hazır!** Bu listeyi tamamladığınızda ilgili sayfa/feature temiz, tutarlı ve ekip standartlarına uygun olacaktır.
