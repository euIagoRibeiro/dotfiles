# --------------- Fish Config ---------------

# Environment Variables
set -g fish_greeting
set -g cachyos_greeting ""

# Interactive Session Setup
if status is-interactive
    clear
    
    # Visual Header
    bash ~/.config/fastfetch/launch.sh
    
    # Prompt Initialization
    if type -q starship
        starship init fish | source
    end
end

# Paths & Tooling
fish_add_path $HOME/.spicetify

if type -q fnm
    fnm env --use-on-cd | source
end