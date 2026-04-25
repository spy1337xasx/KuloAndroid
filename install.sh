#!/bin/bash

echo "[*] Installing dependencies..."
pkg update -y && pkg upgrade -y
pkg install -y wget openssl curl libenet liblua53

echo "[*] Downloading proxy binary..."
wget https://github.com/KULLANICI_ADIN/REPO_ADIN/raw/main/proxy_linux -O proxy_linux

echo "[*] Setting permissions..."
chmod +x proxy_linux

echo "[+] Installation complete! Run with: ./proxy_linux"