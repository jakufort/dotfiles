# Dotfiles

## Installing packages

There's `./other-useful-stuff/install.sh` script that auto installs all packages needed for **current optimal setup**.

## Stow setup

`stow` can be used to link dotfiles to home directory.

Run

```shell
# assumes that `cwd` is root of this repository.
stow --target=<home-directory> .
```

## ZSH setup

1. Install zsh (duh)
2. Install oh-my-zsh
<https://ohmyz.sh/#install>
(most likely: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`)

3. Install `zsh-autosuggestions`
<https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh>

4. Install `zsh-syntax-highlighting`
<https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh>

## Hyprland

To support multiple machines, hyprland config is split into `_shared` conf and configurations related to specific machines.
On each machine, as one time action, you have to run:

```shell
ln -sf ~/.config/hypr/hyprland_<machine_config>.conf ~/.config/hypr/hyprland.conf
```

## Git crypt

`git-crypt-key` stored on NAS (`Documents_backed` directory).

Copy `git-crypt-key` to `~/.ssh/git-crypt-key`.

Then, to unlock repository which contains any encrypted files:

```shell
git-crypt unlock ~/.ssh/git-crypt-key`
```

## VPN

After installing `nordvpn-bin`, local network has to be added to whitelist (so that NAS mount works)

```shell
notdvpn whitelist add subnet 192.168.0.0/24
```

## Keyboard (keychron)

### Function keys

If function keys work as media keys, try this:

```shell
echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode
```

To make it permanent, copy `other-useful-stuff/etc/modprobe.d/hid_apple.conf`.
On endeavouros, since it uses dracut, `other-useful-stuff/etc/dracut.conf.d/hid_apple.conf`.

To rebuild dracut

```shell
sudo dracut --force
```

### Bluetooth

Edit the file /etc/bluetooth/main.conf:

1. Uncomment `FastConnectable` config and set it to true: `FastConnectable = true`
2. Uncomment `ReconnectAttempts=7` (set the value to whatever number that you want)
3. Uncomment `ReconnectIntervals=1, 2, 3`
