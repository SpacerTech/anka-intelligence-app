<p align = "center" ><img width="300" alt="login page"  src=  "https://github.com/user-attachments/assets/ef70340e-78f5-4521-b1fa-10cc665dfb2c" class="right" > <p>

<p align = "center"> ANKA APP </p>  



---


Bu proje, genç girişimcileri startup kültürüyle tanıştırmak ve onları gerçek iş dünyasına hazırlamak için tasarlanmış Anka Intelligence mobil uygulamasıdır. 


-----



## UI Gösterimi

<img width="500" alt="login page" src= "https://github.com/user-attachments/assets/215ba0c2-d408-40ac-aae5-18a828975a82"><br/>

<img width="500" alt="login page" src= "https://github.com/user-attachments/assets/096b12ec-7ac8-4dc1-85c8-bbaa9e5a59ac"><br/>







## Kısa Bir Bakış
Öğrencilerin yenilikçi fikirlerini hayata geçirmelerini, yatırımcılarla bağlantı kurmalarını ve ödüller kazanmalarını sağlar.
## Backers [![Backers on Open Collective](https://opencollective.com/git-point/backers/badge.svg)](#backers)

![Animation_-_1709242147458](https://github.com/balciemirhan/TobetoApp/assets/120199233/908756cc-0d52-402e-b146-7a119cf0fdb6)![Animation_-_1709294655620](https://github.com/mehtapaygun/TobetoApp/assets/103212238/4c4f3281-3041-415f-930c-66fc152a4c76)


## Kullanılan Teknolojiler
### Bloc Pattern
Flutter'da BLoC (Business Logic Component) deseni kullanarak veri yönetimi sağladım. Bu desen, uygulamanın iş mantığını, kullanıcı arayüzünden ve dış dünyadan ayrı olarak yönetmeme olanak tanır. BLoC, verileri akışlar halinde yönetir, bu da uygulamanın durumunu güncellemek ve verilerle etkileşimde bulunmak için etkili bir yol sağlar. Bu sayede, uygulama daha düzenli, ölçeklenebilir ve bakımı daha kolay hale gelir. BLoC desenini kullanarak, uygulamanın farklı bileşenleri arasında veri akışını sağlamak ve kullanıcı etkileşimlerine yanıt vermek için bir aracı olarak kullanıyorum.
### Firebase
Firebase'i kullanarak uygulamada kullanıcı girişi ve hesap oluşturmayı Authentication (Kimlik Doğrulama) servisiyle yönetiyorum. Bu servis, kullanıcıların e-posta/şifre, telefon numarası, Google, Facebook gibi çeşitli kimlik doğrulama yöntemleriyle uygulamaya giriş yapmasını sağlar. Ayrıca, yeni kullanıcı hesapları oluşturmak için de bu servisi kullanıyorum.

Verileri saklamak ve senkronize etmek için Firestore veritabanını kullanıyorum. Firestore, bulut tabanlı, NoSQL veritabanıdır ve gerçek zamanlı veri senkronizasyonunu destekler. Bu, uygulama kullanıcıları arasında anlık güncellemeler sağlar ve çevrimdışı kullanım için veri senkronizasyonunu kolaylaştırır.

Firebase Storage, uygulamada kullanılan resimler gibi medya dosyalarını depolamak için kullanılan bir servistir. Bu servis, resimleri yüklemek, saklamak ve indirmek için kullanılır. Firebase Storage, yüksek performanslı, güvenli ve ölçeklenebilir bir şekilde medya dosyalarını yönetmeme olanak sağlar. Bu da uygulama içindeki resimlerin güvenli bir şekilde depolanmasını ve kullanıcıların ihtiyaç duyduğunda erişebilmesini sağlar.



## Özellikler
-  Dark mode özelliği ile göz yormayan tasarım
-  Kolay profil yönetimi
-  Eğitimleri inceleme ve katılma
-  Not sistemi
-  Video izleme sistemi
-  Takvim sistemi



## Kütüphaneler
* cupertino_icons: ^1.0.2
* lottie: ^2.7.0
* google_fonts: ^6.1.0
* flutter_advanced_drawer: ^1.3.5
* intro_screen_onboarding_flutter: ^1.0.0
* concentric_transition: ^1.0.3
* curved_navigation_bar: ^1.0.3
* firebase_core: ^2.24.2
* firebase_auth: ^4.16.0
* google_sign_in: ^6.2.1
* flutter_bloc: ^8.1.3
*  cloud_firestore: ^4.15.3
*  intl: ^0.19.0
*  firebase_storage: ^11.6.5
*  image_picker: ^1.0.7
*  video_player: ^2.8.2
*  visibility_detector: ^0.4.0+2
*  flick_video_player: ^0.7.0
*  flutter_neat_and_clean_calendar: ^0.3.16+36
*  file_picker: ^5.2.10
*  font_awesome_flutter: ^10.7.0
*  carousel_slider: ^4.2.1
*  url_launcher: ^6.2.5
*  carousel_indicator: ^1.0.6
*  open_file: ^3.3.2
*  shared_preferences: ^2.2.2

