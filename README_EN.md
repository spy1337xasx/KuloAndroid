<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=34&pause=1000&color=00D9FF&center=true&vCenter=true&width=700&lines=KuloAndroid+Proxy;Growtopia+%7C+Android+%7C+Termux;The+Most+Advanced+Mobile+Proxy" alt="Typing SVG" />

<br/>

![Platform](https://img.shields.io/badge/Platform-Android-brightgreen?style=for-the-badge&logo=android)
![Shell](https://img.shields.io/badge/Shell-Termux-blue?style=for-the-badge&logo=gnu-bash)
![Architecture](https://img.shields.io/badge/Arch-ARM64%20%7C%20ARM32-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Online%20%26%20Active-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-Paid-red?style=for-the-badge)

<br/>

[🇹🇷 Türkçe'ye Geç](README_TR.md) • [🌐 Main Page](README.md)

</div>

---

## 💎 BUY LICENSE

<div align="center">

---

### 🇺🇸 This proxy is **paid and license protected**. Cannot be used without purchasing a key.

---

# 🛒 [discord.gg/Kulo](https://discord.gg/Kulo)

---

> 🇺🇸 **License / Purchase:** Join our Discord server above and create a ticket to get your access license.

---

</div>

---

## 📦 1. Required Applications

Before setting up, install only these **2 applications** on your Android device:

| Icon | Application | Download Link | Description |
| :---: | :--- | :---: | :--- |
| 📱 | **Termux (F-Droid / GitHub)** | [Download (.apk)](https://github.com/termux/termux-app/releases/download/v0.118.1/termux-app_v0.118.1+github-debug_arm64-v8a.apk) | ⚠️ **DO NOT install from Google Play!** |
| 🔗 | **Virtual Hosts** | [Download (.apk)](https://github.com/x-falcon/Virtual-Hosts/releases/download/2.1.0/app-Github-release.apk) | Required to route Growtopia traffic. |

---

## ⚠️ Critical Step (Disable Private DNS)

> 🔴 **IMPORTANT:** If **Private DNS** is enabled on your phone, Virtual Hosts will NOT route traffic! Turn it off before starting:

### 📱 How to Disable Private DNS?
1. Open your phone's **Settings**.
2. Go to **Connections** (or **Network & Internet**).
3. Tap on **More connection settings**.
4. Select **Private DNS** and set it to **"Off" / "Disabled"**.

---

## 🚀 2. 1-Click Installation (Termux)

Open Termux and run this single command:

```bash
pkg update && pkg upgrade -y && pkg install -y wget curl openssl libenet liblua53 && wget https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/proxy_android -O proxy_android && chmod +x proxy_android
```

---

## 🌐 3. Host Setup (Virtual Hosts)

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

## ▶️ 4. Start Proxy & Play

1. In **Termux**, launch the proxy:
   ```bash
   ./proxy_android
   ```
2. When you see `[SERVER] Proxy started on port 17198...`:
3. **Open Growtopia** and press **Connect**!
4. Type **/proxy** or **/menu** in game chat to access all features.

---

## 🛠️ Troubleshooting

<details>
<summary><b>❌ 1. "Permission denied" error</b></summary>

```bash
chmod +x proxy_android && ./proxy_android
```
</details>

<details>
<summary><b>❌ 2. Connected to real Growtopia instead of proxy</b></summary>

- Make sure **Private DNS** is set to Off.
- Ensure **Virtual Hosts** toggle is Green (ON).
- Verify `kulohosts.txt` is correctly selected.
</details>

<details>
<summary><b>❌ 3. "Unable to resolve host" or package installation error</b></summary>

```bash
termux-change-repo
```
*(Select the first mirror option and press OK, then run `pkg update -y`)*
</details>

<details>
<summary><b>❌ 4. items.dat error</b></summary>

Log in once normally to Growtopia without proxy so it downloads items.dat first.
</details>

---

<div align="center">

### 🌟 If you like this project, please give a Star!

[![Discord](https://img.shields.io/badge/Discord-discord.gg%2FKulo-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/Kulo)
[![GitHub](https://img.shields.io/badge/GitHub-spy1337xasx%2FKuloAndroid-181717?style=for-the-badge&logo=github)](https://github.com/spy1337xasx/KuloAndroid)

<br/>

**Made with ❤️ for Growtopia Android Community**

</div>
