# Config
Contains my config for apps I use (nvVim and Tmux) and some helpful scripts.  Before beginning: 

```bash
sudo apt update
```

## Install packages xclip, tmux.

```bash
sudo apt install xclip tmux libfuse2t64
```
## Setup nvm / node.js (used for some plugins)

This is needed for some plugins. Follow [this](https://nodejs.org/en/download). NVM makes switching versions easier. 

```bash
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 22
```

## Setup NVIM

```bash
mkdir -p ~/Applications/Nvim && cd ~/Applications/Nvim/ && wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.appimage && chmod +x nvim-linux-x86_64.appimage
mkdir -p ~/.local/bin/ && cd ~/.local/bin/ && ln -s ~/Applications/Nvim/nvim-linux-x86_64.appimage nvim
 ```

## Install user config

```bash
cp -f .tmux.conf ~/.
cp -rf nvim ~/.config/.
```

Install nerd font then set the terminal to use it

```bash
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DejaVuSansMono.zip && unzip DejaVuSansMono.zip && rm *.zip && fc-cache -fv
```

# GNOME Extensions

```bash
sudo apt install gnome-shell-extensions gnome-shell-extension-prefs
sudo apt install gnome-extensions-app
```

Install the extensions manually from `gnome-extensions-list.txt`


