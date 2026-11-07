# Roberto's Vim configuration #

## Plugins included ##
* [Auto Pairs](https://github.com/jiangmiao/auto-pairs)
* [Easy Motion](https://github.com/easymotion/vim-easymotion)
* [Lightline](https://github.com/itchyny/lightline.vim)
* [NERD Tree](https://github.com/preservim/nerdtree)

## Plugin Specifics  ##
### Auto Pairs ###
![Auto Pairs Demo](demo/auto-pairs.gif)    
Automatically creates closing brace, braket, quotation mark, etc.

### Easy Motion ###
![Plugins Demo](demo/EasyMotion.gif)   
How to use:    
* `<leader><leader>s<character to jump into><character spot>`   

### Lightline ###
![Lightline Demo](demo/lightline.png)

### NERD Tree ###
![Plugins Demo](demo/NERDTree.gif)   
How to use:    
* `:NERDTree` to open directory tree    
* `gT` and `gt` to change tabs   
While in directory tree:
* `T` to open file in new tab   
* `m` to open filesystem menu   
* `?` to open help menu    

## Quick install ##
1. Remove vimrc from home directory `rm ~/.vimrc`    
2. Clone this repo `git clone https://github.com/robertoodogherty/.vim.git`   
3. Create link for vimrc to home directory `ln -s ~/.vim/vimrc ~/.vimrc`   
4. Clone Vundle into this repo `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`   
5. Open vim and run `:PluginInstall`   

### Note for OSX Users
If you're on OSX ensure you are using mvim. You can look at how we do this in in the config [repo](https://github.com/robertoodogherty/config) alias.sh file    
