# Disable Fish greeting.
set fish_greeting

# Abbreviations
abbr -a v nvim
abbr -a c clear
abbr -a cb cargo build
abbr -a cr cargo run
abbr -a ct cargo test

abbr -a l 'eza'
abbr -a ls 'eza'
abbr -a ll 'eza -l'
abbr -a lll 'eza -la'

# Git
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'informative'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_char_untrackedfiles '*'
set __fish_git_prompt_color_branch 'yellow'

source ~/.config/fish/private.fish
