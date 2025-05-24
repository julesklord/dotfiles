#!/bin/bash

# ==============================================================================
# Script para Añadir AwesomeWM a un Sistema Manjaro KDE Existente
# Este script asume que ya tienes Manjaro con KDE Plasma funcional.
# Se instalará AwesomeWM y se hará disponible como una sesión en SDDM.
#
# Ejecutar con precaución. Se te pedirá la contraseña de sudo.
# ==============================================================================

# Función para imprimir mensajes
log_message() {
  echo "-----------------------------------------------------"
  echo "$1"
  echo "-----------------------------------------------------"
}

# Función para instalar paquetes en Manjaro
install_awesome_manjaro()
  log_message "Iniciando la instalación de AwesomeWM y utilidades..."

  # Sincronizar la base de datos de pacman y actualizar el sistema (opcional pero recomendado)
  # read -p "¿Deseas actualizar tu sistema antes de instalar (sudo pacman -Syu)? (s/N): " update_system_choice
  # if [[ "$update_system_choice" == "s" || "$update_system_choice" == "S" ]]; then
  #   sudo pacman -Syu
  #   if [ $? -ne 0 ]; then
  #     echo "ERROR: Falló la actualización del sistema. Abortando."
  #     exit 1
  #   fi
  #   log_message "Sistema actualizado."
  # fi

  # Paquetes a instalar:
  # awesome: El gestor de ventanas.
  # xterm: Un terminal X básico como fallback o para pruebas. Konsole ya debería estar disponible.
  local packages_to_install="awesome xterm"

  echo "Se intentarán instalar/verificar los siguientes paquetes: $packages_to_install"
  echo "Se te pedirá la contraseña de sudo si es necesario."

  # Usamos --needed para no reinstalar paquetes que ya existen.
  # Usamos --noconfirm para automatizar, pero ya pedimos confirmación general.
  sudo pacman -S --needed --noconfirm $packages_to_install

  if [ $? -ne 0 ]; then
    echo "ERROR: Falló la instalación de uno o más paquetes. Revisa la salida de pacman."
    exit 1
  fi

  log_message "AwesomeWM y utilidades básicas instaladas/verificadas."
}

# Función para verificar la sesión de AwesomeWM
check_awesome_session() {
  log_message "Verificando la disponibilidad de la sesión de AwesomeWM..."
  local awesome_desktop_file="/usr/share/xsessions/awesome.desktop"

  if [ -f "$awesome_desktop_file" ]; then
    echo "Archivo de sesión '$awesome_desktop_file' encontrado."
    echo "AwesomeWM debería estar disponible en tu pantalla de inicio de sesión (SDDM)."
  else
    echo "ADVERTENCIA: No se encontró '$awesome_desktop_file'."
    echo "Es posible que el paquete de AwesomeWM no lo haya creado o que esté en otra ubicación."
    echo "Normalmente, el paquete 'awesome' en Manjaro/Arch lo provee."
    echo "Si AwesomeWM no aparece como opción al iniciar sesión, podrías necesitar crear este archivo manualmente o reinstalar AwesomeWM."
  fi
}

# --- Flujo Principal del Script ---

log_message "Añadir AwesomeWM a Manjaro KDE"
echo "Este script instalará AwesomeWM y lo hará disponible como una opción de sesión."
echo "NO modificará tu entorno KDE Plasma existente."
echo ""

# Preguntar al usuario si desea continuar
read -p "¿Estás seguro de que deseas continuar? (s/N): " confirmation
if [[ "$confirmation" != "s" && "$confirmation" != "S" ]]; then
  echo "Operación cancelada por el usuario."
  exit 0
fi

# 1. Instalar AwesomeWM y xterm
install_awesome_manjaro

# 2. Verificar el archivo .desktop para la sesión
check_awesome_session

log_message "¡Proceso completado!"
echo ""
echo "Pasos a seguir:"
echo "1. CIERRA TU SESIÓN ACTUAL de KDE Plasma (Logout)."
echo "2. En la pantalla de inicio de sesión (SDDM), busca un menú o icono para"
echo "   SELECCIONAR LA SESIÓN. Deberías ver 'Awesome' o 'AwesomeWM' como una opción."
echo "3. Selecciona 'Awesome' e inicia sesión."
echo ""
echo "Si todo va bien, iniciarás en un entorno AwesomeWM por defecto."
echo "Recuerda que este es un AwesomeWM 'puro', sin tus personalizaciones aún."
echo ""
echo "Próximas recomendaciones para tu entorno AwesomeWM:"
echo "  - Instalar un lanzador de aplicaciones como 'rofi': sudo pacman -S rofi"
echo "  - Instalar un compositor como 'picom' para transparencias y efectos: sudo pacman -S picom"
echo "  - Empezar a personalizar tu archivo de configuración de AwesomeWM en '~/.config/awesome/rc.lua'"
echo "    (Copia el archivo por defecto desde '/etc/xdg/awesome/rc.lua' si no existe)."

exit 0
