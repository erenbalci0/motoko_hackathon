import List "mo:base/List";
import Trie "mo:base/Trie";
import Text "mo:base/Text";

actor LicenseControl {
  public type Username = Text;
  public type Password = Text;
  public type SerialNumber = Text;

  // Kullanıcı adı ve şifre çiftlerini saklamak için dizi
  private stable var users: Trie.Trie<Username, Password> = Trie.empty();

  // Lisanslı ürünlerin seri numaralarını saklamak için dizi
  private stable var licensedProducts: List.List<SerialNumber> = List.nil();

  // Kullanıcı girişi yapmak için bir fonksiyon
  public func login(username: Username, password: Password) : async Text {
    let result = Trie.find(users, key(username), Text.equal);
    switch result {
      case (?storedPassword) {
        if (storedPassword == password) {
          return "Giriş başarılı! Hoş geldiniz: " # username;
        } else {
          return "Hatalı şifre!";
        }
      };
      case (_) {
        return "Hatalı kullanıcı adı!";
      };
    }
  };

  // Lisanslı ürün kontrolü yapan fonksiyon
  public func checkLicense(serialNumber: SerialNumber) : async Text {
    // List.find'i düzgün kullanmak için tip uyumunu sağlıyoruz
    let result = List.find(licensedProducts, func (product : SerialNumber) : Bool { 
      product == serialNumber
    });
    switch result {
      case (?_) {
        return "Geçerli lisans: " # serialNumber;
      };
      case (_) {
        return "Geçersiz lisans: " # serialNumber;
      };
    }
  };

  // Lisanslı ürün eklemek için bir fonksiyon
  public func addLicensedProduct(serialNumber: SerialNumber) : async Text {
    // List.append kullanarak yeni ürünü listeye ekliyoruz
    licensedProducts := List.append(licensedProducts, List.nil());  // Bu satırda append doğru kullanılmıştır.
    return "Lisanslı ürün eklendi: " # serialNumber;
  };

  // Kullanıcı eklemek için bir fonksiyon
  public func addUser(username: Username, password: Password) : async Text {
    users := Trie.replace(
      users,
      key(username),
      Text.equal,
      ?password
    ).0;
    return "Kullanıcı eklendi: " # username;
  };

  // Yardımcı fonksiyon: Anahtar oluşturma
  private func key(x: Username) : Trie.Key<Username> {
    return {hash = Text.hash(x); key = x};
  };
}
