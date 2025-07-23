#!/bin/sh

echo "installing yay"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "installing packages"
yay --sudoloop -S \
	fzf \
	stow \
	curl \
	jq \
	btop \
	ttf-jetbrains-mono-nerd \
	ripgrep \
	lazygit \
	neovim \
	cmus \
	cmusfm \
	starship \
	eza \
	bat \
	fish \
	zoxide \
	gsimplecal \
	git-crypt \
	wezterm-git \
	nordvpn-bin \
	tlrc-bin \
	fastfetch \
	playerctl \
	sway \
	swaygb \
	cliphist \
	waybar \
	grimshot \
	gammastep \
	luarocks \
	btop \
	flatpak \
	asunder \
	kid3 \
	mpv \
	jetbrains-toolbox \
	tofi

echo "installing mise"
gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 0x7413A06D
curl https://mise.jdx.dev/install.sh.sig | gpg --decrypt >mise-install.sh
sh ./mise-install.sh
rm mise-install.sh

echo "installing flatpaks"
flatpak install com.calibre_ebook.calibre com.github.tchx84.Flatseal dev.vencord.Vesktop fr.handbrake.ghb md.obsidian.Obsidian org.signal.Signal
