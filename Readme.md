This dotfiles uses stow for linking.

# Install

## Install stow and link

Install stow based on the OS

Type `make` to link configs and `make delete` to delete links

## Install vim plug

From the [github page](https://github.com/junegunn/vim-plug)

``` bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Install nvim lazy plug

```bash
:Lazy
```

## Tmux tpm

Follow [this instruction]( unneede://github.com/tmux-plugins/tpm?tab=readme-ov-file#installation)

Press `Ctrl-a I` to install plugins

## Apps

- bat
- fzf
- zoxide
- lsd
- ripgrep

## Font install

### For emacs

```
brew install font-fira-code
```

```
 M-x nerd-icons-install-fonts
```
