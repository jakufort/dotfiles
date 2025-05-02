function aliases
  alias vim=nvim
  alias cat=bat
  alias grep=rg
  abbr ls 'eza -lg --icons --color=always'
  abbr ll 'exa -lag --icons --color=always'
end

function variables
  set -xg EDITOR nvim
  set -xg RIPGREP_CONFIG_PATH ~/.config/ripgrep/config
end

function tools
  fzf --fish | source
  starship init fish | source
  ~/.local/bin/mise activate fish | source
  zoxide init fish | source
end

if status is-interactive
  # disables welcome message
  set fish_greeting
  aliases
  variables
  tools

  fish_ssh_agent id_ed25519

  fish_config theme choose rose-pine-moon
end
