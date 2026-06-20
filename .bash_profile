#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


# Added by Antigravity CLI installer
export PATH="/home/julesklord/.local/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/julesklord/.lmstudio/bin"
# End of LM Studio CLI section

## POSHBUDDY AUTO-GENERATED CONFIG - START (THEME)
## Description: Apply Oh My Posh theme: thecyberden
eval "$(oh-my-posh init bash --config '/home/julesklord/.poshthemes/thecyberden.omp.json')"
## POSHBUDDY AUTO-GENERATED CONFIG - END (THEME)