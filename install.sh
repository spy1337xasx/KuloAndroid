#!/data/data/com.termux/files/usr/bin/bash

# Renkler
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

clear
echo ""
echo -e "${CYAN}${BOLD}========================================${NC}"
echo -e "${CYAN}${BOLD}       KULO ANDROID PROXY INSTALLER     ${NC}"
echo -e "${CYAN}${BOLD}                 v2.5.0                 ${NC}"
echo -e "${CYAN}${BOLD}========================================${NC}"
echo ""

# Paket listesini güncelle
echo -e "${YELLOW}[*] Paket listesi güncelleniyor...${NC}"
pkg update -y > /dev/null 2>&1
echo -e "${GREEN}[+] Paket listesi güncellendi.${NC}"
echo ""

# Gerekli paketleri kontrol et ve kur
PACKAGES="wget curl openssl libenet"

for pkg in $PACKAGES; do
    if dpkg -s "$pkg" > /dev/null 2>&1; then
        echo -e "${GREEN}[+] $pkg zaten kurulu.${NC}"
    else
        echo -e "${YELLOW}[*] $pkg kuruluyor...${NC}"
        pkg install -y "$pkg" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}[+] $pkg başarıyla kuruldu.${NC}"
        else
            echo -e "${RED}[!] $pkg kurulamadı!${NC}"
        fi
    fi
done

echo ""
echo -e "${YELLOW}[*] Proxy izinleri ayarlanıyor...${NC}"
if [ -f "proxy_android" ]; then
    chmod +x proxy_android
    ln -sf proxy_android proxy_linux 2>/dev/null
    echo -e "${GREEN}[+] İzinler başarıyla verildi.${NC}"
elif [ -f "proxy_linux" ]; then
    chmod +x proxy_linux
    ln -sf proxy_linux proxy_android 2>/dev/null
    echo -e "${GREEN}[+] İzinler başarıyla verildi.${NC}"
else
    echo -e "${RED}[!] proxy_android dosyası bulunamadı!${NC}"
fi

echo ""
echo -e "${CYAN}${BOLD}========================================${NC}"
echo -e "${GREEN}${BOLD}[✓] KURULUM BAŞARIYLA TAMAMLANDI!${NC}"
echo -e "${CYAN}${BOLD}========================================${NC}"
echo ""
echo -e "${YELLOW}Proxy'yi başlatmak için alttaki komutu yazın:${NC}"
echo -e "${CYAN}${BOLD}./proxy_android${NC}"
echo ""