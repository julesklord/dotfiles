# 🐧 the .dotfiles (Hybrid Edition) 🪟

> "A developer's environment is their throne. This is mine."

Bienvenido a la cueva del nerdo. Este es un respaldo vivo de mis configuraciones, forjado tras años de distrohopping en Linux y optimizado para la máxima productividad en Windows 11. 

Toma lo que gustes, aca todo es libre. Si quieres comentar, preguntar o simplemente conectar:  <julioglez.93@gmail.com>

---

## 🚀 El Stack Actual (Windows / Rust Dev)

Tras mucho tiempo en Manjaro, actualmente mi entorno principal corre sobre **Windows + PowerShell 7.6**, enfocado en el desarrollo de herramientas TUI en Rust (como [poshbuddy](https://github.com/julesklord/poshbuddy)).

### 🖥️ Core Components
*   **Shell**: PowerShell 7.6 (con `gsync` aliases y funciones personalizadas)
*   **Prompt**: [Oh My Posh](https://ohmyposh.dev/) (Tema: `atomic`)
*   **Terminal**: Windows Terminal (CaskaydiaCove NF)
*   **Editor**: VS Code / Neovim / Vim
*   **Navegación**: [Zoxide](https://github.com/ajeetdsouza/zoxide) + [Yazi](https://github.com/sxyazi/yazi)
*   **Gestión de Paquetes**: Scoop & Winget

### 📂 Estructura del Repositorio
*   `/powershell`: Perfiles optimizados para PS 5.1 y 7.6.
*   `/windows`: Configuraciones de VS Code, Windows Terminal y listas de software.
*   `/.poshthemes`: Colección completa de temas para Oh My Posh.
*   `/.gitconfig`: Mis alias globales y configuración de identidad.
*   `/.vim`: Configuración de Vim (Vundle, AirLine, Fugitive).
*   `/.config`: Configuraciones de Linux (Zellij, Btop, Fontconfig).
*   `/scripts`: Automatizaciones en Bash y Python.

---

## 📸 La Manteca (Screenshots)

Aquí es donde se ve el trabajo duro. La estética no es negociable.

![Descripción Screenshot 1](scrots/scrot1.png)
![Descripción Screenshot 2](scrots/scrot2.png)
![Descripción Screenshot 3](scrots/scrot3.png)

---

## 🛠️ Cómo Usar Mis Configs

### En Windows:
He generado listas de software para que puedas replicar mi entorno en segundos:
1.  Instala Scoop: `irm get.scoop.sh | iex`
2.  Importa mis apps: `cat windows/scoop_list.txt | scoop install`
3.  Enlaza el perfil: `New-Item -ItemType SymbolicLink -Path $PROFILE -Target (Resolve-Path powershell/Microsoft.PowerShell_profile.ps1)`

### En Linux:
Recomiendo usar [GNU Stow](https://www.gnu.org/software/stow/) para gestionar los enlaces simbólicos en tu `$HOME`.

---

## 🕰️ El Legado (Oldies / Linux Ricing)

No olvido mis raíces. Aquí guardo configuraciones de WMs que marcaron época en mi flujo de trabajo:

### AwesomeWM
![screenshot](scrots/scrot1.png)

### HerbstluftWM
![screenshot](https://i.redd.it/3u4o2hqay5ez.png)

### i3-gaps
![Screenshot](https://i.imgur.com/ujhrXu4.png)
![Screenshot](https://i.imgur.com/vr5vtff.png)

---

## 🤝 Agradecimientos & Inspiración

*   A la comunidad de **r/unixporn** por la inspiración constante.
*   A **Linus Torvalds**, por darnos el núcleo de todo.
*   A todos los devs de herramientas TUI que hacen que la terminal sea un lugar feliz.

## Licencia

Estos dotfiles se comparten bajo la **Licencia MIT**. Siéntete libre de usarlos, modificarlos y distribuirlos.

---
*Actualizado en abril de 2026 con ❤️ y muchas horas de terminal.*
