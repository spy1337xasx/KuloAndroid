#!/bin/bash

echo "[*] Installing dependencies..."
pkg update -y && pkg upgrade -y
pkg install -y wget openssl curl libenet 

echo "[*] Downloading proxy binary..."
wget https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/proxy_linux -O proxy_linux

echo "[*] Setting permissions..."
chmod +x proxy_linux

echo "[+] Installation complete! Run with: ./proxy_linux"
