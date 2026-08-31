<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=34&pause=1000&color=00D9FF&center=true&vCenter=true&width=700&lines=KuloAndroid+Proxy;Growtopia+%7C+Android+%7C+Termux;The+Most+Advanced+Mobile+Proxy" alt="Typing SVG" />

<br/>

![Platform](https://img.shields.io/badge/Platform-Android-brightgreen?style=for-the-badge&logo=android)
![Shell](https://img.shields.io/badge/Shell-Termux-blue?style=for-the-badge&logo=gnu-bash)
![Architecture](https://img.shields.io/badge/Arch-ARM64%20%7C%20ARM32-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Online%20%26%20Active-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-Paid-red?style=for-the-badge)

<br/>

[🇺🇸 Switch to English](README_EN.md) • [🌐 Ana Sayfa](README.md)

</div>

---

## 💎 LİSANS SATIN AL

<div align="center">

---

### 🇹🇷 Bu proxy **ücretli ve lisans korumalıdır**. Lisans almadan kullanılamaz.

---

# 🛒 [discord.gg/Kulo](https://discord.gg/Kulo)

---

> 🇹🇷 **Lisans / Satın Alım:** Yukarıdaki Discord sunucumuza katılıp yetkililerden lisans anahtarınızı teslim alabilirsiniz.

---

</div>

---

## 📦 1. Gerekli Uygulamalar

Kuruluma başlamadan önce telefonunuza sadece şu **2 uygulamayı** indirip yükleyin:

| Simge | Uygulama Adı | İndirme Bağlantısı | Açıklama |
| :---: | :--- | :---: | :--- |
| 📱 | **Termux (F-Droid / GitHub)** | [İndir (.apk)](https://github.com/termux/termux-app/releases/download/v0.118.1/termux-app_v0.118.1+github-debug_arm64-v8a.apk) | ⚠️ **Google Play'den İNDİRMEYİN!** Eski sürümdür. |
| 🔗 | **Virtual Hosts** | [İndir (.apk)](https://github.com/x-falcon/Virtual-Hosts/releases/download/2.1.0/app-Github-release.apk) | Proxy trafiğini yönlendirmek için gereklidir. |

---

## ⚠️ Önemli Ön Hazırlık (Özel DNS Kapatma)

> 🔴 **DİKKAT:** Telefonunuzda **Özel DNS (Private DNS)** açık ise Virtual Hosts proxy'yi yönlendiremez ve oyun bağlantınız kopar! Kurulumdan önce mutlaka kapatın:

### 📱 Özel DNS Nasıl Kapatılır?
1. Telefonunuzun **Ayarlar (Settings)** menüsünü açın.
2. **Bağlantılar (Connections)** veya **Ağ ve İnternet** seçeneğine dokunun.
3. **Diğer Bağlantı Ayarları** bölümüne girin.
4. **Özel DNS (Private DNS)** alanına dokunun ve **"Kapalı" (Off)** seçeneğini kaydedin.

---

## 🚀 2. 1-Tık Kolay Kurulum (Termux)

Termux uygulamasını açın ve aşağıdaki komutu **tek parça kopyalayıp Termux'a yapıştırın** ve Enter'a basın:

```bash
pkg update && pkg upgrade -y && pkg install -y wget curl openssl libenet liblua53 && wget https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/proxy_android -O proxy_android && chmod +x proxy_android
```

---

## 🌐 3. Host Kurulumu (Virtual Hosts)

1. **Host Dosyasını İndirin:**
   * Termux üzerinden doğrudan telefonunuza indirmek için şu komutu çalıştırın:
     ```bash
     curl -s https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts -o /sdcard/kulohosts.txt
     ```
   * *Veya tarayıcıdan indirmek için:* [kulohosts.txt İndir](https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts)

2. **Virtual Hosts Uygulamasını Açın:**
   * **`SELECT HOSTS FILE`** butonuna basın.
   * Telefonunuzun ana dizinindeki **`kulohosts.txt`** dosyasını seçin.
   * Ana ekrandaki büyük **Aç/Kapa (ON)** butonuna basarak **Yeşil (Aktif)** hale getirin.

---

## ▶️ 4. Proxy'yi Başlatma ve Oyuna Giriş

1. **Termux'a Gelin** ve proxy'yi başlatın:
   ```bash
   ./proxy_android
   ```
2. Proxy lisansınızı doğruladıktan sonra `[SERVER] Proxy started on port 17198...` mesajı gelecektir.
3. **Growtopia'yı Açın** ve normal şekilde **Connect** butonuna basarak oyuna girin!
4. Oyunda sohbet alanına **/proxy** veya **/menu** yazarak özellikleri kullanabilirsiniz.

---

## 🛠️ Sık Karşılaşılan Sorunlar ve Çözümleri

<details>
<summary><b>❌ 1. "Permission denied" Hatası Alıyorum</b></summary>

Dosya çalıştırma izni eksiktir. Termux'a şu komutu yazın:
```bash
chmod +x proxy_android && ./proxy_android
```
</details>

<details>
<summary><b>❌ 2. Proxy Çalışıyor Ama Growtopia Orijinal Sunucuya Bağlanıyor</b></summary>

- **Özel DNS (Private DNS)** açık kalmış olabilir. Ayarlardan kapalı olduğundan emin olun.
- **Virtual Hosts** uygulamasının açık ve butonun **Yeşil (ON)** olduğunu kontrol edin.
- `kulohosts.txt` dosyasının doğru seçildiğinden emin olun.
</details>

<details>
<summary><b>❌ 3. "Unable to resolve host" veya "Paket Yüklenemedi" Hatası</b></summary>

Termux depo adreslerini yenilemek için:
```bash
termux-change-repo
```
*(Açılan menüde ilk seçeneği seçip OK deyin, ardından `pkg update -y` çalıştırın.)*
</details>

<details>
<summary><b>❌ 4. items.dat Hatası</b></summary>

Proxy'yi açmadan önce Growtopia'ya **normal şekilde 1 kez giriş yapın** ve items.dat dosyasının telefonunuza inmesini bekleyin. Ardından proxy üzerinden bağlanın.
</details>

---

<div align="center">

### 🌟 Projeyi Beğendiyseniz Yıldız (Star) Vermeyi Unutmayın!

[![Discord](https://img.shields.io/badge/Discord-discord.gg%2FKulo-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/Kulo)
[![GitHub](https://img.shields.io/badge/GitHub-spy1337xasx%2FKuloAndroid-181717?style=for-the-badge&logo=github)](https://github.com/spy1337xasx/KuloAndroid)

<br/>

**Made with ❤️ for Growtopia Android Community**

</div>
