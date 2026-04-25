<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=32&pause=1000&color=00D9FF&center=true&vCenter=true&width=700&lines=KuloAndroid+Proxy;Growtopia+%7C+Android+%7C+Termux" alt="Typing SVG" />

<br/>

![Platform](https://img.shields.io/badge/Platform-Android-brightgreen?style=for-the-badge&logo=android)
![Shell](https://img.shields.io/badge/Shell-Bash-blue?style=for-the-badge&logo=gnu-bash)
![License](https://img.shields.io/badge/License-Paid-red?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

<br/>

> **Android üzerinde Termux ile çalışan Growtopia Proxy.**

</div>

---

## 💎 LİSANS SATIN AL / BUY LICENSE

<div align="center">

---

### 🇹🇷 Bu proxy **ücretlidir** ve lisans satın alınmadan kullanılamaz.
### 🇺🇸 This proxy is **paid** and cannot be used without purchasing a license.

---

# 🛒 [discord.gg/Kulo](https://discord.gg/Kulo)

---

> 🇹🇷 Lisans satın almak için yukarıdaki Discord sunucumuza katıl ve yetkililere ulaş.

> 🇺🇸 Join our Discord server above to purchase a license and contact our staff.

---

</div>

---

## 📋 İçindekiler

- [Gereksinimler](#-gereksinimler)
- [Kurulum](#-kurulum)
- [Kullanım](#-kullanım)
- [Host Dosyası](#-host-dosyası)
- [Sorun Giderme](#-sorun-giderme)
- [Notlar](#-notlar)

---

## 📦 Gereksinimler

| Uygulama | Link |
|----------|------|
| 📱 **Termux** | [GitHub Releases](https://github.com/termux/termux-app/releases) |
| 🌐 **PowerTunnel** | [İndir](https://github.com/krlvm/PowerTunnel-Android/releases/download/v2.6.3/PowerTunnel.apk) |
| 🔗 **Virtual Hosts** | [İndir](https://github.com/x-falcon/Virtual-Hosts/releases/download/2.1.0/app-Github-release.apk) |

> ⚠️ **Termux'u Google Play'den indirme!** Yukarıdaki GitHub linkini kullan.

---

## ⚙️ Kurulum

### 1️⃣ Termux'u aç ve paketleri güncelle

```bash
pkg update && pkg upgrade -y
```

### 2️⃣ Gerekli kütüphaneleri kur

```bash
pkg install -y wget curl openssl libenet liblua53
```

### 3️⃣ Proxy'yi indir ve kur

```bash
wget https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/proxy_linux -O proxy_linux && chmod +x proxy_linux
```

---

## ▶️ Kullanım

Kurulum bittikten sonra proxy'yi başlatmak için:

```bash
./proxy_linux
```

---

## 🗂️ Host Dosyası

**Virtual Hosts** uygulamasına eklemen gereken host dosyası:

📄 **[kulohosts dosyasını buradan indir](https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts)**

Ya da Termux ile direkt indir:

```bash
wget https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts -O /sdcard/kulohosts.txt
```

Sonra **Virtual Hosts** uygulamasını aç → **Hosts File** sekmesine gel → `kulohosts.txt` dosyasını seç → Aktive et.

---

## 🔧 Sorun Giderme

<details>
<summary><b>❌ "Permission denied" hatası</b></summary>

```bash
chmod +x proxy_linux
./proxy_linux
```

</details>

<details>
<summary><b>❌ Kütüphane bulunamıyor</b></summary>

```bash
pkg install -y libenet liblua53 openssl-tool curl wget
```

</details>

<details>
<summary><b>❌ Proxy çalışıyor ama Growtopia bağlanmıyor</b></summary>

- Virtual Hosts uygulamasının **aktif** olduğundan emin ol
- `kulohosts.txt` dosyasının doğru yüklendiğini kontrol et
- PowerTunnel çalışıyor mu kontrol et

</details>

<details>
<summary><b>❌ items.dat hatası</b></summary>

Proxy'yi başlatmadan önce Growtopia'ya **normal şekilde giriş yap** ve items.dat indirmesini bekle. Sonra proxy'yi çalıştır.

</details>

---

## 📝 Notlar

> 🇹🇷 Proxy'yi kullanmadan önce Growtopia'ya **normal giriş yapın** ve items.dat indirmesini bekleyin.

> 🇺🇸 **Login first** and let Growtopia download items.dat **before** using the proxy.

---

<div align="center">

**⭐ Beğendiysen yıldız atmayı unutma!**

[![Discord](https://img.shields.io/badge/Discord-discord.gg%2FKulo-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/Kulo)
[![GitHub](https://img.shields.io/badge/GitHub-spy1337xasx%2FKuloAndroid-181717?style=for-the-badge&logo=github)](https://github.com/spy1337xasx/KuloAndroid)

<br/>

Made with ❤️ for Growtopia Android Community

</div>
