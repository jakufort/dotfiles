# Stow setup

`stow` can be used to link dotfiles to home directory.

Run
```
# assumes that `cwd` is root of this repository.
stow --target=<home-directory> .
```

# ZSH setup

1. Install zsh (duh)
2. Install oh-my-zsh
https://ohmyz.sh/#install
(most likely: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`)

3. Install `zsh-autosuggestions`
https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

4. Install `zsh-syntax-highlighting`
https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh

# Git crypt

`git-crypt-key` stored on NAS (`Documents_backed` directory).

Copy `git-crypt-key` to `~/.ssh/git-crypt-key`.

Then, to unlock repository which contains any encrypted files:

```
git-crypt unlock ~/.ssh/git-crypt-key`
```

# VPN

After installing `nordvpn-bin`, local network has to be added to whitelist (so that NAS mount works)

```
notdvpn whitelist add subnet 192.168.0.0/24
```

# Bluetooth (keychron)


Edit the file /etc/bluetooth/main.conf:
1. Uncomment `FastConnectable` config and set it to true: `FastConnectable = true`
2. Uncomment `ReconnectAttempts=7` (set the value to whatever number that you want)
3. Uncomment `ReconnectIntervals=1, 2, 3`

