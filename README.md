# Lisans Kontrol Sistemi

Bu proje, kullanıcıların giriş yapmasını, lisanslı ürünlerin kontrol edilmesini ve yeni kullanıcılar ile lisanslı ürünler eklenmesini sağlayan bir lisans kontrol sistemidir. Sistem, kullanıcı adı ve şifre ile giriş yapılabilmesini, ürünlerin seri numaralarına göre lisanslı olup olmadığının kontrol edilmesini ve yeni kullanıcılar ile lisanslı ürünlerin sisteme eklenebilmesini sağlar.

## Özellikler

- **Kullanıcı Girişi**: Kullanıcılar, kullanıcı adı ve şifre ile sisteme giriş yapabilir. Giriş yaparken doğru kullanıcı adı ve şifre kontrol edilir.
- **Lisans Doğrulama**: Kullanıcılar, bir ürünün seri numarasını girerek ürünün lisanslı olup olmadığını öğrenebilir.
- **Yeni Kullanıcı Ekleme**: Yönetici, yeni kullanıcılar ekleyebilir. Kullanıcılar, kullanıcı adı ve şifre bilgileriyle sisteme kaydedilir.
- **Lisanslı Ürün Ekleme**: Yönetici, ürünlerin seri numaralarını ekleyerek lisanslı ürünler listesine dahil edebilir.

## Kullanım

Sistem, aşağıdaki işlemleri destekler:

### 1. Yeni Kullanıcı Ekleme

Yönetici, kullanıcı adı ve şifre bilgilerini girerek yeni bir kullanıcı oluşturabilir. Kullanıcı bilgileri, hızlı arama yapabilmek için `Trie` veri yapısında saklanır.

### 2. Kullanıcı Girişi

Kullanıcılar, giriş yaparken kullanıcı adı ve şifre bilgilerini girer. Sistem, bu bilgileri doğrular ve kullanıcıya giriş sonucu iletilir.

### 3. Lisanslı Ürün Ekleme

Yönetici, ürünlerin seri numaralarını girerek lisanslı ürünler listesine ekleyebilir. Bu işlem, belirli bir ürünün lisans durumunun kontrol edilmesini sağlar.

### 4. Lisans Durumunu Kontrol Etme

Kullanıcılar, bir ürünün seri numarasını girerek o ürünün lisanslı olup olmadığını kontrol edebilir. Eğer ürün lisanslıysa, sistem bunu bildirir; aksi takdirde geçersiz lisans uyarısı verir.

## Çalıştırma

Bu projeyi çalıştırmak için aşağıdaki adımları takip edebilirsiniz:

1. **Motoko Ortamını Kurma**: DFINITY Internet Computer platformunda Motoko kullanabilmek için gerekli ortamı kurun.
2. **Depoyu Klonlayın**: Projeyi GitHub üzerinden yerel makinenize klonlayın.
3. **Projeyi Derleyin**: Proje dosyalarını derleyin.
4. **Projeyi Çalıştırın**: Sistemi dağıtın ve çalıştırın.

## Kullanılan Teknolojiler

- **Motoko**: Bu proje, DFINITY Internet Computer platformunda merkeziyetsiz uygulamalar geliştirmek için kullanılan Motoko programlama dili ile yazılmıştır.
- **Trie**: Kullanıcı bilgilerini saklamak için ağaç yapısına dayalı bir veri yapısı kullanılmıştır.
- **List**: Lisanslı ürünlerin seri numaralarını yönetmek için liste veri yapısı kullanılmıştır.

## Katkıda Bulunma

Bu projeye katkıda bulunmak isterseniz, depoyu çatallayarak bir pull request (PR) gönderebilirsiniz.

## Lisans

Bu proje MIT Lisansı altında lisanslanmıştır.
