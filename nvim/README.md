## Neovim configuration
![image](https://user-images.githubusercontent.com/43048524/153890880-33c3b701-93b2-49de-95b6-f8816617f86b.png)

### Features
- Autocompletion
- LSP support
- Catppuccin theme

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

