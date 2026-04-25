<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&pause=1000&color=00D9FF&center=true&vCenter=true&width=600&lines=Growtopia+Android+Proxy;Termux+%7C+Fast+%7C+Free" alt="Typing SVG" />

<br/>

![Platform](https://img.shields.io/badge/Platform-Android-brightgreen?style=for-the-badge&logo=android)
![Shell](https://img.shields.io/badge/Shell-Bash-blue?style=for-the-badge&logo=gnu-bash)
![License](https://img.shields.io/badge/License-Paid-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

> **Growtopia için Android üzerinde çalışan hızlı ve kolay kurulumlu proxy.**

</div>

---

## 📋 İçindekiler

- [Gereksinimler](#-gereksinimler)
- [Kurulum](#-kurulum)
- [Kullanım](#-kullanım)
- [Sorun Giderme](#-sorun-giderme)
- [Notlar](#-notlar)

---

## 📦 Gereksinimler

| Uygulama | İndirme Linki |
|----------|--------------|
| 📱 **Termux** | [GitHub Releases](https://github.com/termux/termux-app/releases) |
| 🌐 **PowerTunnel** (VPN bypass) | [İndir](https://github.com/krlvm/PowerTunnel-Android/releases/download/v2.6.3/PowerTunnel.apk) |
| 🔗 **Virtual Hosts** (Host yönlendirme) | [İndir](https://github.com/x-falcon/Virtual-Hosts/releases/download/2.1.0/app-Github-release.apk) |

> ⚠️ **Termux'u Google Play'den indirmeyin!** Resmi GitHub sürümünü kullanın.

---

## ⚙️ Kurulum

### 1️⃣ Adım — Termux'u Aç ve Paketleri Güncelle

```bash
pkg update && pkg upgrade -y
```

### 2️⃣ Adım — Gerekli Kütüphaneleri Kur

```bash
pkg install -y wget curl openssl libenet liblua53
```

### 3️⃣ Adım — Proxy'yi Kur (Tek Komut)

```bash
wget https://github.com/KULLANICI_ADIN/REPO_ADIN/raw/main/install.sh && bash install.sh
```

> 💡 Yukarıdaki komut tüm dosyaları otomatik indirir ve gerekli izinleri ayarlar.

---

## ▶️ Kullanım

Kurulum tamamlandıktan sonra proxy'yi başlatmak için:

```bash
./proxy_linux
```

Eğer proxy daha önce kurulduysa ve tekrar çalıştırmak istiyorsan:

```bash
cd ~ && ./proxy_linux
```

---

## 🗂️ Host Dosyası Kurulumu

**Virtual Hosts** uygulamasına aşağıdaki host dosyasını ekle:

📄 **hosts.txt** → [İndir]([https://raw.githubusercontent.com/KULLANICI_ADIN/REPO_ADIN/main/host](https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts))

Veya Termux üzerinden otomatik indir:

```bash
wget https://raw.githubusercontent.com/KULLANICI_ADIN/REPO_ADIN/main/host -O /sdcard/hosts.txt
```

---

## 🔧 Sorun Giderme

<details>
<summary><b>❌ "Permission denied" hatası alıyorum</b></summary>

```bash
chmod +x proxy_linux
./proxy_linux
```

</details>

<details>
<summary><b>❌ Kütüphane bulunamıyor hatası</b></summary>

```bash
pkg install -y libenet liblua53 openssl-tool
```

</details>

<details>
<summary><b>❌ Proxy başlıyor ama Growtopia bağlanmıyor</b></summary>

- Virtual Hosts uygulamasının aktif olduğundan emin ol
- hosts.txt dosyasının doğru yüklendiğini kontrol et
- PowerTunnel'ın çalışıp çalışmadığını kontrol et

</details>

<details>
<summary><b>❌ items.dat hatası</b></summary>

Proxy'yi kullanmadan önce Growtopia'ya **normal şekilde giriş yap** ve items.dat'ı indirmesini bekle, sonra proxy'yi başlat.

</details>

---

## 📝 Notlar

> 🇹🇷 Proxy'yi kullanmadan önce Growtopia'ya **normal şekilde giriş yapın** ve items.dat'ın indirilmesini bekleyin.

> 🇺🇸 **Login first** and wait for Growtopia to download items.dat **before** starting the proxy.

---

## 💬 Destek

<div align="center">

[![Discord](https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/DISCORD_LINKIN)

</div>

---

<div align="center">

**⭐ Beğendiysen yıldız atmayı unutma!**

Made with ❤️ for Growtopia Android Community

</div>
