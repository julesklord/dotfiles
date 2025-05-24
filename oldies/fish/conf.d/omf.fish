# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
export SPOTIPY_CLIENT_ID='015592592bc14079a0c96189a70f3d5f'
export SPOTIPY_CLIENT_SECRET='28bf300938fe4115851415c4471e24b0'
