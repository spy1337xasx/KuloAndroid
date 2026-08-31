<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=34&pause=1000&color=00D9FF&center=true&vCenter=true&width=700&lines=KuloAndroid+Proxy;Growtopia+%7C+Android+%7C+Termux;The+Most+Advanced+Mobile+Proxy" alt="Typing SVG" />

<br/>

![Platform](https://img.shields.io/badge/Platform-Android-brightgreen?style=for-the-badge&logo=android)
![Shell](https://img.shields.io/badge/Shell-Termux-blue?style=for-the-badge&logo=gnu-bash)
![Architecture](https://img.shields.io/badge/Arch-ARM64%20%7C%20ARM32-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Online%20%26%20Active-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-Paid-red?style=for-the-badge)

<br/>

### 🌐 DİL SEÇİMİ / SELECT LANGUAGE

[![Türkçe](https://img.shields.io/badge/Türkçe-🇹🇷-red?style=for-the-badge)](README_TR.md)
[![English](https://img.shields.io/badge/English-🇺🇸-blue?style=for-the-badge)](README_EN.md)

*(Aşağıdaki sekmelerden de dilinizi seçip rehberi doğrudan görüntüleyebilirsiniz / You can also expand your language below)*

</div>

---

## 💎 LİSANS SATIN AL / BUY LICENSE

<div align="center">

---

### 🇹🇷 Bu proxy **ücretli ve lisans korumalıdır**. Lisans almadan kullanılamaz.
### 🇺🇸 This proxy is **paid and license protected**. Cannot be used without purchasing a key.

---

# 🛒 [discord.gg/Kulo](https://discord.gg/Kulo)

---

> 🇹🇷 **Lisans / Satın Alım:** Yukarıdaki Discord sunucumuza katılıp yetkililerden lisans anahtarınızı teslim alabilirsiniz.
> 
> 🇺🇸 **License / Purchase:** Join our Discord server above and create a ticket to get your access license.

---

</div>

---

<details open>
<summary><h2>🇹🇷 TÜRKÇE KURULUM REHBERİ (Tıkla & Aç)</h2></summary>

### 📦 1. Gerekli Uygulamalar

Kuruluma başlamadan önce telefonunuza sadece şu **2 uygulamayı** indirip yükleyin:

| Simge | Uygulama Adı | İndirme Bağlantısı | Açıklama |
| :---: | :--- | :---: | :--- |
| 📱 | **Termux (F-Droid / GitHub)** | [İndir (.apk)](https://github.com/termux/termux-app/releases/download/v0.118.1/termux-app_v0.118.1+github-debug_arm64-v8a.apk) | ⚠️ **Google Play'den İNDİRMEYİN!** |
| 🔗 | **Virtual Hosts** | [İndir (.apk)](https://github.com/x-falcon/Virtual-Hosts/releases/download/2.1.0/app-Github-release.apk) | Proxy trafiğini yönlendirmek içindir. |

---

### ⚠️ Önemli Ön Hazırlık (Özel DNS Kapatma)

> 🔴 **DİKKAT:** Telefonunuzda **Özel DNS (Private DNS)** açık ise Virtual Hosts çalışmaz ve bağlantı kopar! Kapatmak için:

1. Telefonunuzun **Ayarlar (Settings)** menüsünü açın.
2. **Bağlantılar (Connections)** veya **Ağ ve İnternet** seçeneğine dokunun.
3. **Diğer Bağlantı Ayarları** bölümüne girin.
4. **Özel DNS (Private DNS)** alanına dokunun ve **"Kapalı" (Off)** seçeneğini kaydedin.

---

### 🚀 2. 1-Tık Kolay Kurulum (Termux)

Termux'u açın ve aşağıdaki komutu **tek parça kopyalayıp Termux'a yapıştırın** ve Enter'a basın:

```bash
pkg update && pkg upgrade -y && pkg install -y wget curl openssl libenet liblua53 && wget https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/proxy_android -O proxy_android && chmod +x proxy_android
```

---

### 🌐 3. Host Kurulumu (Virtual Hosts)

1. **Host Dosyasını İndirin:**
   * Termux'a şu komutu yazarak indirin:
     ```bash
     curl -s https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts -o /sdcard/kulohosts.txt
     ```
   * *Veya tarayıcıdan indirin:* [kulohosts.txt İndir](https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts)

2. **Virtual Hosts Uygulamasını Açın:**
   * **`SELECT HOSTS FILE`** butonuna basın.
   * Telefonunuzun ana dizinindeki **`kulohosts.txt`** dosyasını seçin.
   * Ana ekrandaki büyük **Aç/Kapa (ON)** butonuna basarak **Yeşil (Aktif)** hale getirin.

---

### ▶️ 4. Proxy'yi Başlatma ve Oyuna Giriş

1. **Termux'a Gelin** ve proxy'yi başlatın:
   ```bash
   ./proxy_android
   ```
2. Proxy lisansınızı doğruladıktan sonra `[SERVER] Proxy started on port 17198...` yazacaktır.
3. **Growtopia'yı Açın** ve **Connect** butonuna basarak oyuna girin!
4. Oyunda sohbet alanına **/proxy** veya **/menu** yazarak özellikleri kullanabilirsiniz.

---

### 🛠️ Sık Karşılaşılan Sorunlar

* ❌ **"Permission denied" hatası:** `chmod +x proxy_android && ./proxy_android` yazın.
* ❌ **Proxy açılıyor ama orijinal GT'ye giriyor:** Özel DNS'in kapalı olduğunu ve Virtual Hosts'un Yeşil (ON) olduğunu kontrol edin.
* ❌ **items.dat hatası:** Proxy'yi açmadan önce Growtopia'ya 1 kez normal giriş yapıp dosyanın inmesini bekleyin.

</details>

---

<details>
<summary><h2>🇺🇸 ENGLISH SETUP GUIDE (Click to Expand)</h2></summary>

### 📦 1. Required Applications

Before setting up, install only these **2 applications** on your Android device:

| Icon | Application | Download Link | Description |
| :---: | :--- | :---: | :--- |
| 📱 | **Termux (F-Droid / GitHub)** | [Download (.apk)](https://github.com/termux/termux-app/releases/download/v0.118.1/termux-app_v0.118.1+github-debug_arm64-v8a.apk) | ⚠️ **DO NOT install from Google Play!** |
| 🔗 | **Virtual Hosts** | [Download (.apk)](https://github.com/x-falcon/Virtual-Hosts/releases/download/2.1.0/app-Github-release.apk) | Required to route Growtopia traffic. |

---

### ⚠️ Critical Step (Disable Private DNS)

> 🔴 **IMPORTANT:** If **Private DNS** is enabled on your phone, Virtual Hosts will NOT route traffic! Turn it off before starting:

1. Open your phone's **Settings**.
2. Go to **Connections** (or **Network & Internet**).
3. Tap on **More connection settings**.
4. Select **Private DNS** and set it to **"Off" / "Disabled"**.

---

### 🚀 2. 1-Click Installation (Termux)

Open Termux and run this single command:

```bash
pkg update && pkg upgrade -y && pkg install -y wget curl openssl libenet liblua53 && wget https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/proxy_android -O proxy_android && chmod +x proxy_android
```

---

### 🌐 3. Host Setup (Virtual Hosts)

1. **Download Host File:**
   * Run this in Termux to download directly:
     ```bash
     curl -s https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts -o /sdcard/kulohosts.txt
     ```
   * *Or download via browser:* [Download kulohosts.txt](https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/kulohosts)

2. **Configure Virtual Hosts App:**
   * Tap **`SELECT HOSTS FILE`**.
   * Pick **`kulohosts.txt`** from your internal storage.
   * Turn the toggle button to **Green (ON / Active)**.

---

### ▶️ 4. Start Proxy & Play

1. In **Termux**, launch the proxy:
   ```bash
   ./proxy_android
   ```
2. When you see `[SERVER] Proxy started on port 17198...`:
3. **Open Growtopia** and press **Connect**!
4. Type **/proxy** or **/menu** in game chat to access all features.

---

### 🛠️ Troubleshooting

* ❌ **"Permission denied":** Run `chmod +x proxy_android && ./proxy_android`
* ❌ **Connected to real Growtopia instead of proxy:** Make sure Private DNS is Off and Virtual Hosts toggle is Green (ON).
* ❌ **items.dat error:** Log in once normally to Growtopia without proxy so it downloads items.dat first.

</details>

---

<div align="center">

### 🌟 If you like this project, please give a Star!

[![Discord](https://img.shields.io/badge/Discord-discord.gg%2FKulo-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/Kulo)
[![GitHub](https://img.shields.io/badge/GitHub-spy1337xasx%2FKuloAndroid-181717?style=for-the-badge&logo=github)](https://github.com/spy1337xasx/KuloAndroid)

<br/>

**Made with ❤️ for Growtopia Android Community**

</div>
