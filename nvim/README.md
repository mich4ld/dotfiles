## Neovim configuration

### Install Packer for plugins management (from AUR)
```sh
$ paru -S nvim-packer-git
```

### Install LSP servers (Node.js and npm)
```sh
$ npm i -g typescript bash-language-server typescript-language-server
$ sudo pacman -S rust-analyzer
```

### Sync plugins
```
$ nvim

:PackerSync
```
