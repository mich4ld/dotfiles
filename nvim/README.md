## Neovim configuration
Config created with development in Node.js and Rust in mind.
![image](https://user-images.githubusercontent.com/43048524/153890880-33c3b701-93b2-49de-95b6-f8816617f86b.png)
![image](https://user-images.githubusercontent.com/43048524/154150732-5782ba11-a2bf-412b-bf67-3af6e7a7956f.png)


### Features
- Autocompletion (nvim-cmp)
- LSP support (native nvim-lsp)
- Files tree (NvimTree plugin)
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

