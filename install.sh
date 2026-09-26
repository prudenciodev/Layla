#!/usr/bin/env bash
# ============================================================================
# Layla AI — Instalador Oficial Multiplataforma (Linux, macOS, Android/Termux)
# Desenvolvido por: Prudencio Dev | Instagram: @prudenciodev | YouTube: @prudenciodev
# ============================================================================

set -e

REPO="prudenciodev/Layla"
INSTALL_DIR="$HOME/layla"

echo "============================================================================"
echo " Layla AI — Instalador Oficial (Linux & Termux)"
echo " Desenvolvido por: Prudencio Dev | @prudenciodev"
echo "============================================================================"
echo ""

# 1. Detectar ambiente
IS_TERMUX=false
if [ -n "$TERMUX_VERSION" ] || [ -d "/data/data/com.termux" ]; then
    IS_TERMUX=true
    echo "[INFO] Ambiente Android / Termux detectado."
else
    echo "[INFO] Ambiente Linux / Unix detectado."
fi

# 2. Instalar dependências básicas
if [ "$IS_TERMUX" = true ]; then
    echo "[INFO] Verificando e instalando pacotes do Termux..."
    pkg update -y
    pkg install -y curl tar nodejs
    npm install -g pnpm@11.7.0 --silent 2>/dev/null || true
else
    # Auto-instalação de dependências em Linux caso estejam ausentes
    if ! command -v node >/dev/null 2>&1 || ! command -v curl >/dev/null 2>&1 || ! command -v tar >/dev/null 2>&1; then
        echo "[INFO] Verificando dependências do sistema (Node.js, curl, tar)..."
        if [ "$(id -u)" -eq 0 ]; then
            if command -v apt-get >/dev/null 2>&1; then
                apt-get update -y && apt-get install -y curl tar nodejs npm
            elif command -v dnf >/dev/null 2>&1; then
                dnf install -y curl tar nodejs npm
            elif command -v pacman >/dev/null 2>&1; then
                pacman -Sy --noconfirm curl tar nodejs npm
            elif command -v apk >/dev/null 2>&1; then
                apk add --no-cache curl tar nodejs npm
            fi
        elif command -v sudo >/dev/null 2>&1; then
            if command -v apt-get >/dev/null 2>&1; then
                echo "[INFO] Solicitando permissão para instalar Node.js e ferramentas..."
                sudo apt-get update -y && sudo apt-get install -y curl tar nodejs npm || true
            elif command -v dnf >/dev/null 2>&1; then
                sudo dnf install -y curl tar nodejs npm || true
            elif command -v pacman >/dev/null 2>&1; then
                sudo pacman -Sy --noconfirm curl tar nodejs npm || true
            fi
        fi
    fi

    if ! command -v curl >/dev/null 2>&1 || ! command -v tar >/dev/null 2>&1; then
        echo "[ERRO] curl e tar são necessários. Instale-os com o gerenciador de pacotes da sua distribuição."
        exit 1
    fi
    if ! command -v node >/dev/null 2>&1; then
        echo "[ERRO] Node.js não encontrado no sistema!"
        echo "Em distribuições Debian/Ubuntu: sudo apt install -y nodejs npm"
        echo "Em distribuições Fedora/RHEL: sudo dnf install -y nodejs npm"
        echo "Em distribuições Arch Linux: sudo pacman -S nodejs npm"
        echo "Ou instale diretamente de: https://nodejs.org/"
        exit 1
    fi
    if ! command -v pnpm >/dev/null 2>&1; then
        echo "[INFO] Configurando gerenciador pnpm..."
        npm install -g pnpm@11.7.0 --silent 2>/dev/null || sudo npm install -g pnpm@11.7.0 --silent 2>/dev/null || true
    fi
fi

# 3. Obter URL do pacote oficial mais recente
echo "[INFO] Verificando última versão oficial da Layla..."
RELEASE_DATA=$(curl -s "https://api.github.com/repos/$REPO/releases/latest")
DOWNLOAD_URL=$(echo "$RELEASE_DATA" | grep -o 'https://[^"]*Layla-linux-termux\.tar\.gz' | head -n 1)

if [ -z "$DOWNLOAD_URL" ]; then
    echo "[AVISO] Usando endpoint direto da versão mais recente..."
    DOWNLOAD_URL="https://github.com/$REPO/releases/latest/download/Layla-linux-termux.tar.gz"
fi

echo "[INFO] Baixando pacote oficial da Layla ($DOWNLOAD_URL)..."
TEMP_ARCHIVE=$(mktemp)
curl -fL "$DOWNLOAD_URL" -o "$TEMP_ARCHIVE" --progress-bar

# 4. Extrair para $HOME/layla
echo "[INFO] Instalando em $INSTALL_DIR..."
mkdir -p "$INSTALL_DIR"
tar -xzf "$TEMP_ARCHIVE" -C "$INSTALL_DIR"
rm -f "$TEMP_ARCHIVE"

# 5. Permissão de execução
chmod +x "$INSTALL_DIR/iniciar-layla.sh"

# 6. Criar comando 'layla' global no sistema
BIN_PATH=""
if [ "$IS_TERMUX" = true ] && [ -d "/data/data/com.termux/files/usr/bin" ]; then
    BIN_PATH="/data/data/com.termux/files/usr/bin/layla"
elif [ -w "/usr/local/bin" ]; then
    BIN_PATH="/usr/local/bin/layla"
else
    mkdir -p "$HOME/.local/bin"
    BIN_PATH="$HOME/.local/bin/layla"
fi

if [ -n "$BIN_PATH" ]; then
    cat << 'EOF' > "$BIN_PATH"
#!/usr/bin/env bash
exec "$HOME/layla/iniciar-layla.sh" "$@"
EOF
    chmod +x "$BIN_PATH"
    echo "[OK] Comando 'layla' configurado em $BIN_PATH!"
fi

echo ""
echo "============================================================================"
echo "  [SUCESSO] Layla AI instalada com sucesso!"
echo "  Para iniciar a qualquer momento, digite:"
echo "    layla"
echo "  Ou acesse a pasta:"
echo "    cd ~/layla && ./iniciar-layla.sh"
echo "============================================================================"
echo ""

# 7. Iniciar imediatamente
exec "$INSTALL_DIR/iniciar-layla.sh"
