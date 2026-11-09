# Roberto's Vim configuration #

## Plugins included ##
* [Auto Pairs](https://github.com/jiangmiao/auto-pairs)
* [coc.nvim](https://github.com/neoclide/coc.nvim)
* [Easy Motion](https://github.com/easymotion/vim-easymotion)
* [Lightline](https://github.com/itchyny/lightline.vim)
* [NERD Tree](https://github.com/preservim/nerdtree)

## Plugin Specifics  ##
### Auto Pairs ###
![Auto Pairs Demo](demo/auto-pairs.gif)    
Automatically creates closing brace, braket, quotation mark, etc.

### coc.nvim ###
IDE-style code navigation through language servers: jump to definitions (in a new tab), find usages, hover docs, rename, errors.
Set up for Go (`coc-go` → gopls) and C/C++ (`coc-clangd` → clangd); both extensions install themselves on first start.

How to use (cursor on a function, type or variable):
* `<leader>d` jump to its definition in a **new tab** (`<leader>` is `\`), then `gt` / `gT` to switch tabs
* `gd` jump to its definition in the current window, `Ctrl-o` to jump back
* `gr` list every place it's used (Enter on a line to open it)
* `K` show its type and doc comment
* `<leader>rn` rename it across the project
* `[g` / `]g` previous / next error or warning
* In insert mode, the completion menu: `Tab` / `Shift-Tab` to move, `Ctrl-y` to accept

Useful commands:
* `:CocList extensions` see installed extensions
* `:CocInstall coc-pyright` add a language (Python here; see the [extension list](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions))
* `:CocInfo` / `:CocRestart` debug or restart it if jumps stop working

Notes:
* Go: run Vim inside a Go module (a folder with `go.mod`, or below one). The first time you open a `.go` file, coc-go offers to install gopls; say yes (needs Go installed).
* `definition provider not found for current buffer` means no language server is attached to the file, usually because it was installed while vim was open. Run `:CocRestart`. If it persists, check `:CocInfo`.
* The first jump after opening vim can take a second or two while gopls loads the package.
* C/C++: clangd needs a `compile_commands.json` in the project root to know your include paths. CMake writes one with `-DCMAKE_EXPORT_COMPILE_COMMANDS=ON`.

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

## Color scheme ##
[wildcharm](https://github.com/vim/colorschemes), built into Vim 9.1+: a cool, high-contrast dark theme. The vimrc clears its background so the terminal's black shows through. Lightline uses `wombat`.

## Quick install ##
1. Remove vimrc from home directory `rm ~/.vimrc`    
2. Clone this repo `git clone https://github.com/robertoodogherty/.vim.git`   
3. Create link for vimrc to home directory `ln -s ~/.vim/vimrc ~/.vimrc`   
4. Clone Vundle into this repo `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`   
5. Install Node.js, which coc.nvim needs: `brew install node`   
   * `zsh: command not found: brew` on Apple Silicon usually means Homebrew is installed but not on your PATH. Fix with `echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile` and open a new terminal.   
6. Clone coc.nvim's prebuilt `release` branch (Vundle can't pick a branch, so it's `pinned` in the vimrc): `git clone --branch release --depth 1 https://github.com/neoclide/coc.nvim.git ~/.vim/bundle/coc.nvim`   
7. Open vim (9.1+ for wildcharm and coc.nvim) and run `:PluginInstall`   
8. Restart vim; coc installs `coc-go` and `coc-clangd` on its own (wait for it to finish)   
9. Go only: open any `.go` file; coc-go offers to install gopls, say yes (needs Go). Then run `:CocRestart` (or reopen vim) so the open buffer connects to gopls   
10. Test it: put the cursor on a function call and press `\d`; the definition opens in a new tab   

To update coc.nvim later: `git -C ~/.vim/bundle/coc.nvim pull` (`:PluginUpdate` skips it because it's pinned).   

### Note for OSX Users
If you're on OSX ensure you are using mvim. You can look at how we do this in in the config [repo](https://github.com/robertoodogherty/config) alias.sh file    
