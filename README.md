# 🐧 dotfiles

> "A developer's environment is their throne. This is mine."

My living configuration backup — forged through years of Linux distrohopping and continuously optimized across multiple machines and shells.

---

## 🖥️ Stack Actual (CachyOS / Rust Dev / Wayland)

Primary environment running on **CachyOS** (Arch-based), focused on Rust TUI development and a fully Wayland setup.

### Core Components

| Layer | Tool |
|---|---|
| **Shell** | Zsh (CachyOS config) + Fish |
| **Prompt** | [Oh My Posh](https://ohmyposh.dev/) — tema `thecyberden` |
| **Compositor** | Niri (Wayland) + Hyprland fallback |
| **Terminal** | Kitty · Ghostty · Foot · Alacritty |
| **Multiplexer** | Zellij · Tmux |
| **Editor** | Zed · Helix · Micro · Vim |
| **File nav** | Yazi + Zoxide |
| **Monitor** | btop (gruvbox dark) |
| **Visualizer** | cava |
| **Display mgr** | kanshi (Wayland output config) |

---

## 📂 Estructura del Repositorio

```
dotfiles/
├── .zshrc                    # Zsh config (CachyOS + oh-my-posh)
├── .bashrc / .bash_profile   # Bash fallback
├── .gitconfig                # Global git config & aliases
├── .tmux.conf                # Tmux keybinds & theme
├── .Xresources               # X11 resources
├── .gtkrc-2.0                # GTK2 theme
│
├── .config/
│   ├── alacritty/            # Alacritty terminal + dank theme
│   ├── btop/                 # btop (v1.4.7, gruvbox_dark)
│   ├── cava/themes/          # cava audio visualizer themes
│   ├── environment.d/        # Wayland env vars (DMS, electron flags)
│   ├── fish/                 # Fish shell config + completions
│   ├── fontconfig/           # Font rendering config
│   ├── foot/                 # Foot terminal color scheme
│   ├── ghostty/themes/       # Ghostty terminal themes
│   ├── helix/                # Helix editor config + languages
│   ├── htop/                 # htop layout
│   ├── hypr/dms/             # Hyprland color palette
│   ├── kanshi/               # Display layout profiles
│   ├── kitty/                # Kitty terminal config + dank theme
│   ├── micro/                # Micro editor settings + keybindings
│   ├── niri/                 # Niri Wayland compositor config
│   ├── zed/                  # Zed editor settings + custom theme
│   ├── zellij/               # Zellij multiplexer config
│   └── weechat/              # Weechat IRC client
│
├── .poshthemes/              # Full Oh My Posh theme collection
├── .vim/                     # Vim config (Vundle, Airline, Fugitive)
│
├── powershell/               # PowerShell profiles (5.1 & 7.6)
├── windows/                  # Windows Terminal, VSCode, Scoop/Winget lists
├── scripts/                  # Bash/Python automation scripts
├── colorschemes/             # Standalone color schemes
├── scratch/                  # Old/experimental configs (legacy)
└── oldies/                   # AwesomeWM, i3, HerbstluftWM configs
```

---

## 🚀 Instalación

### Linux — via GNU Stow

[GNU Stow](https://www.gnu.org/software/stow/) crea symlinks automáticamente desde el repo a `$HOME`:

```bash
git clone https://github.com/julesklord/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Instalar todo de una vez
stow --target=$HOME .

# O instalar configs individuales
stow --target=$HOME/.config .config/zed
stow --target=$HOME/.config .config/kitty
```

### Windows — via PowerShell

```powershell
# 1. Instala Scoop
irm get.scoop.sh | iex

# 2. Importa apps
cat windows/scoop_list.txt | scoop install

# 3. Enlaza el perfil de PowerShell
New-Item -ItemType SymbolicLink -Path $PROFILE `
  -Target (Resolve-Path powershell/Microsoft.PowerShell_profile.ps1)
```

---

## ⚠️ Secrets & Seguridad

Este repo usa `.gitignore` para excluir automáticamente:
- Tokens de auth (`auth.json`, `auth.db`, `hosts.yml`, rclone.conf)
- Perfiles de browser (Chromium, Firefox, Zen)
- Datos de apps pesadas (Claude, Antigravity, opencode, Obsidian)
- Archivos de sesión y estado generado por KDE/Wayland

**Si tu editor guarda tokens en su config** (p.ej. Zed MCP settings), usa variables de entorno o el gestor de secretos del sistema en lugar de hardcodear valores.

---

## 🕰️ Legacy — Linux Ricing

Guardadas en `/oldies`. WMs que marcaron época:

### AwesomeWM
![screenshot](scrots/scrot1.png)

### HerbstluftWM
![screenshot](https://i.redd.it/3u4o2hqay5ez.png)

### i3-gaps
![Screenshot](https://i.imgur.com/ujhrXu4.png)

---

## 🤝 Créditos

- La comunidad de **r/unixporn** por la inspiración constante
- **Linus Torvalds** por el núcleo de todo
- Los devs de Niri, Zellij, Helix, Kitty y todo el ecosistema moderno de herramientas TUI

## Licencia

MIT — úsalos, modifícalos, compártelos.

---

*Actualizado en junio de 2026 con ❤️ y muchas horas de terminal.*
