function aliases
  alias vim=nvim
  alias ls=eza
  alias xl='eza -lg --icons --color=always'
  alias xll='exa -lag --icons --color=always'
  alias cat=bat
  alias grep=rg
end

function variables
  set -xg EDITOR nvim
  set -xg RIPGREP_CONFIG_PATH ~/.config/ripgrep/config
end

function tools
  fzf --fish | source
  starship init fish | source
  mise activate fish | source
  zoxide init fish | source
end

if status is-interactive
  # disables welcome message
  set fish_greeting
  aliases
  variables
  tools

  fish_ssh_agent
end
