source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# use tinyfetch instead of fastfetch
function fish_greeting
    tinyfetch --noframe
end

# Added by Antigravity CLI installer
set -gx PATH "/home/julesklord/.local/bin" $PATH
set -gx PATH "/home/julesklord/.cargo/bin" $PATH

# Oh My Posh initialization (only if installed).
# Uses the jandedobbeleer theme by default if available, falling back to
# common system locations or the oh-my-posh default init.
if type -q oh-my-posh
    # enable truecolor for modern themes
    set -x COLORTERM truecolor

    # prefer a user theme in ~/.poshthemes, then common install locations
    set THEME $HOME/.poshthemes/jandedobbeleer.omp.json
    if test -f $THEME
        oh-my-posh init fish --config $THEME | source
    else if test -f /usr/local/share/oh-my-posh/themes/jandedobbeleer.omp.json
        oh-my-posh init fish --config /usr/local/share/oh-my-posh/themes/jandedobbeleer.omp.json | source
    else if test -f /usr/share/oh-my-posh/themes/jandedobbeleer.omp.json
        oh-my-posh init fish --config /usr/share/oh-my-posh/themes/jandedobbeleer.omp.json | source
    else
        # fallback to whatever oh-my-posh provides by default
        oh-my-posh init fish | source
    end
end
# zoxide init commands.
zoxide init fish | source

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/julesklord/.lmstudio/bin
# End of LM Studio CLI
## POSHBUDDY AUTO-GENERATED CONFIG - START (THEME)
## Description: Apply Oh My Posh theme: thecyberden
oh-my-posh init fish --config '/home/julesklord/.poshthemes/thecyberden.omp.json' | source
## POSHBUDDY AUTO-GENERATED CONFIG - END (THEME)
#
# ENVIROMENT VARIABLES