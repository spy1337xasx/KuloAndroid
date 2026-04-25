#!/data/data/com.termux/files/usr/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

echo ""
echo -e "${CYAN}${BOLD}===============================${NC}"
echo -e "${CYAN}${BOLD}   KuloAndroid Proxy Installer ${NC}"
echo -e "${CYAN}${BOLD}===============================${NC}"
echo ""

# Paket listesini güncelle
echo -e "${YELLOW}[*] Paket listesi güncelleniyor...${NC}"
apt-get update -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" > /dev/null 2>&1
echo -e "${GREEN}[+] Paket listesi güncellendi.${NC}"
echo ""

# Gerekli paketleri tek tek kontrol et ve kur
PACKAGES="wget curl openssl libenet"

for pkg in $PACKAGES; do
    if dpkg -s "$pkg" > /dev/null 2>&1; then
        echo -e "${GREEN}[+] $pkg zaten kurulu, atlanıyor.${NC}"
    else
        echo -e "${YELLOW}[*] $pkg kuruluyor...${NC}"
        apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" "$pkg" > /dev/null 2>&1
        if dpkg -s "$pkg" > /dev/null 2>&1; then
            echo -e "${GREEN}[+] $pkg başarıyla kuruldu.${NC}"
        else
            echo -e "${RED}[-] $pkg kurulamadı, pkg ile deneniyor...${NC}"
            pkg install -y "$pkg" > /dev/null 2>&1
            if dpkg -s "$pkg" > /dev/null 2>&1; then
                echo -e "${GREEN}[+] $pkg başarıyla kuruldu.${NC}"
            else
                echo -e "${RED}[!] $pkg kurulamadı. Devam ediliyor...${NC}"
            fi
        fi
    fi
done

echo ""

# proxy_linux dosyasını indir
echo -e "${YELLOW}[*] proxy_linux indiriliyor...${NC}"
curl -L -o proxy_linux "https://raw.githubusercontent.com/spy1337xasx/KuloAndroid/refs/heads/main/proxy_linux" 2>/dev/null

if [ -f "proxy_linux" ] && [ -s "proxy_linux" ]; then
    chmod +x proxy_linux
    echo -e "${GREEN}[+] proxy_linux indirildi ve izinler ayarlandı.${NC}"
else
    echo -e "${RED}[!] proxy_linux indirilemedi. İnternet bağlantınızı kontrol edin.${NC}"
    exit 1
fi

echo ""
echo -e "${CYAN}${BOLD}===============================${NC}"
echo -e "${GREEN}${BOLD} Kurulum tamamlandı!${NC}"
echo -e "${CYAN}${BOLD}===============================${NC}"
echo ""
echo -e " Başlatmak için: ${BOLD}./proxy_linux${NC}"
echo -e " Lisans için:    ${BOLD}discord.gg/Kulo${NC}"
echo ""
