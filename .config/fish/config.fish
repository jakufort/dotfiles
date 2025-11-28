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
  set -xg MANPAGER "nvim +Man!"
end

function tools
  fzf --fish | source
  starship init fish | source
  ~/.local/bin/mise activate fish | source
  zoxide init fish | source

  fish_add_path ~/.local/share/JetBrains/Toolbox/scripts
end

if status is-interactive
  # disables welcome message
  set fish_greeting
  aliases
  variables
  tools

  fish_ssh_agent id_ed25519

  fish_config theme choose rose-pine-moon
else
  ~/.local/bin/mise activate fish --shims | source

  set -xg JAVA_HOME (~/.local/bin/mise where java)
end
