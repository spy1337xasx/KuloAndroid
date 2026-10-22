#!/data/data/com.termux/files/usr/bin/bash
set -eu

# Keep the certificate inside Termux's private storage. `termux-open` shares it
# with Android through a content URI, so no /sdcard permission is required.
CERT_FILE="$HOME/Kulo-Android-Current-CA.cer"
CERT_BASE64='MIID3DCCAsSgAwIBAgIUYNnWrtAAA1DeJX+bra0T3nZ5b1swDQYJKoZIhvcNAQELBQAwHTEbMBkGA1UEAwwSd3d3Lmdyb3d0b3BpYTEuY29tMB4XDTI2MTAwNzE0MjMxNFoXDTMwMTExNTE0MjMxNFowHTEbMBkGA1UEAwwSd3d3Lmdyb3d0b3BpYTEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwdb0TIjo9pwMKD3bqqC3eUguQDjma+KiuSN/EtXWpzupRQZdVgJh0tgD36OizLZfIbMqG1GceI+1xvof1Q9uam3D4PPnZxfgTqA8w84B84USeWY6JsyZFxl+nZecaeag9Q5dHcILXgAi1yqnjP2rSfEInv/eVuGdDdX41y6jXM6xRgRypY//6hTuUX79qNLGivUL8OzaxlPA/v8cRt4hxKTSnmCZbLDp4c21SVoVlU3Xd0kW+uD+QNzpyrHIuXRW6AlTaDSPcFVFboR5O34s30eJzQd5gb4Dev6QD5Tn877tCYVCm5RfJq+qDiqevx/d26hcKQ5ubUn6fpjLrICBawIDAQABo4IBEjCCAQ4wDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAqQwEwYDVR0lBAwwCgYIKwYBBQUHAwEwUQYDVR0RBEowSIISd3d3Lmdyb3d0b3BpYTEuY29tghJ3d3cuZ3Jvd3RvcGlhMi5jb22CDmdyb3d0b3BpYTEuY29tgg5ncm93dG9waWEyLmNvbTBkBgNVHR4BAf8EWjBYoCQwEIIOZ3Jvd3RvcGlhMS5jb20wEIIOZ3Jvd3RvcGlhMi5jb22hMDAKhwgAAAAAAAAAADAihyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAdBgNVHQ4EFgQU+74+ip2d45GARvV4j09kG5IIHvkwDQYJKoZIhvcNAQELBQADggEBADIs4v5XvXh8+XBDA0dPqYQKcPBt9ZxWs0lOQdz+TBDurgmcHmLtYw6SdmXScrwo27Ajv0LDdAuuV6bdaPbxjJLqN4j1w7Srm4y9G5ZFBGcAV2dGHzdwaLcPdN4pcX08acaWcCtTEn+Xpnvh+dH9U6dq3dk/KV99WWKntQSSBQlDeS7/NkAmKyTuDcwuhGrg+YqN9dY0f/0MdXGnWh4hvxlTZc3wkM2ju+f9T7Ht+8LQyK5e2xgCmMUm8JBSPJYFwX18P0+HzK8LMRMqMBEyMNMmMrPXqPQ/w9zahgld4zwA2nDrxBQuz59BdCVoeqwfEl6dLEt5if7b1RnwbUV3IVs='

printf '%s' "$CERT_BASE64" | base64 -d > "$CERT_FILE"

CERT_SIZE=$(wc -c < "$CERT_FILE" | tr -d ' ')
if [ "$CERT_SIZE" != "992" ]; then
    echo "Certificate creation failed (unexpected size: $CERT_SIZE)."
    exit 1
fi

echo "Certificate prepared: $CERT_FILE"
echo "Opening Android certificate installer..."

TERMUX_OPEN="/data/data/com.termux/files/usr/bin/termux-open"
if [ ! -x "$TERMUX_OPEN" ]; then
    echo "termux-open is missing. Run: pkg install termux-tools"
    exit 1
fi

"$TERMUX_OPEN" \
    --view \
    --content-type application/x-x509-ca-cert \
    "$CERT_FILE"

echo "Approve the Android security prompt to finish installation."
