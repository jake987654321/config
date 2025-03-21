# Config
Contains my config for apps I use (Vim and Tmux) and some helpful scripts. 

# Install packages xclip, tmux.

```bash
sudo apt update
sudo apt install xclip tmux fuse
sudo apt install npm # Needed to install LSP servers
mkdir -p ~/.local/share/appimages && cd ~/.local/share/appimages && wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.appimage && chmod +x nvim-linux-x86_64.appimage
echo "alias vi=\"$HOME/.local/share/appimages/nvim-linux-x86_64.appimage\"" >> ~/.bash_aliases && echo "alias vim=\"$HOME/.local/share/appimages/nvim-linux-x86_64.appimage\"" >> ~/.bash_aliases
 ```

# Install user config

```bash
cp -f .tmux.conf ~/.
cp -rf nvim ~/.config/.
```

Install nerd font then set the terminal to use it

```bash
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DejaVuSansMono.zip && unzip DejaVuSansMono.zip && rm *.zip
fc-cache -fv
```

# GNOME Extensions

```bash
sudo apt install gnome-shell-extensions gnome-shell-extension-prefs
sudo apt install gnome-extensions-app
```

Install the extensions manually from `gnome-extensions-list.txt`


