### fan_config
- here is a init.sh, please use it after arch_install (https://github.com/xiyou-linuxer/arch_install.git)

- maybe you dont't use sway or i3. so you can use gnome, KDE, xfce.

- so the sway default config need you to cp it by yourself

- 1. Don't worry, the sway default config is in /etc/sway/config, but i think it is not a good idea change it there. The good way is mkdir a .config.

- 2. ok, enjoy the archlinux dev!

- 3. by the way, the vim plugins isn't use easily, i use the vim-plug to manage my all vim plugins, please go the https://github.com/junegunn/vim-plug to install vim-plug 

     ```bash
     curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
     ```

     and execute these commands in vim or neovim

     ```bash
     :source %
     :PlugInstall
     ```

     please wait about 3 minutes, then can enjob vim or neovim to edite your project!.

     and here i want to introduce my hot keys for you!.

     all my terminator is used tmux. you can see my .tmux.conf.

     i use ctrl + a to my prekey, and left split windows you can use (ctrl + a) + |, and down split windwos you can use (ctrl + a) + - . and my default tmux theme is nord. it seems so charming. I will hide the tmux bar sometime. use (ctrl + a) + :set -g status off.

     about vim :

     vim is my best editor ! >_< . I also use vscode. and the vscode is also install the vim plugin. The editing of way is vim.

     I think the noinit vim is like a eighteen years old girl. she has no pretty clothes and no make up. but if you try it. you will be exervice. What a **wonderful** ediing philosophy! I install about 12 plugins in vim. I think it isn't fluenter than before. but it doesn't matter.

     - about  split windows : use (ctrl + w) (prekey)

       ctrl + w + | : split window left

       ctrl + w + - : split window down

       ctrl + w + Left or Right : move in different windows

       ctrl + w + c : close current window

       ctrl + w + w : move next window

       ctrl + n ; open the nerdtree ( the file tree plugin in vim)

       ctrl + w + = : format all windows, make all split windows have the same size

       ctrl + w + m : create new file

     - about the tagbar

       i use airline to my tagbar.

       so you must use :tabnew like this to open new tag.

       but it is easliy to move in different tags. just use (shift + left) and (shift + right).

     - about the vim airline

       a pretty line vimplugin. and i use default theme. I think default theme is more befaulty than anyone.

     - if you think my config to vim is stuck. you can comment the .vimrc Plug "ryanoasis/vim-devicons", and execute source % and PlugClean to remove it. This Plugin provide icons for nerdtree and airline. it will cost more memory and cpu. Comment is will speed your vim.

     - i use youcompleteme to my complete plugin.

     - onedark is my best theme. but the onedark theme in vim is not my favourite. so i use atom. --_--

     - and i enable the mouse in vim. you can use mouse in vim.

  4. zshrc. i use zsh to my default shell. 

     - i use ys to my default theme
     - and you will find so many alias command. yep!. now so many rust rewritten commands. and all of them are more excellent than the default commands. such as exa. this a really a colorful ls. 
     - and some other zsh plugins you can learn it from zsh offical website.

  5. sway.

     - sway, if you never use it. please try this now if you have a big screen. My Screen is 2560 x 1080 .  itn't normal. 
     - sway is a great windows manager.
     - i change small default config in it.
       - use win + left / right to choose window
       - use win + shift + left / right to move current window
       - use win + number(1, 2, 3) to move mouse to which workspace
       - use win + shift + number(1, 2, 3) to move current window to any workspace
       - use win + q to kill current window. the default config is win + shift + q
       - use win + shift c to reboot the sway
         - if you change the sway config please use it.
       - use win + shift + e to exit sway.
       - use win + r to resize current window
       - use PrtSc to printscreenshot to the default filepath
       - and volume key is normal.

  6. swaylock

     - swaylock , use it to lock your screen.

  7. terminator

     - i use alacritty to my default terminator.

|                  | OLD_VERSION    | NEW_VERSION    |
| ---------------- | -------------- | -------------- |
| Most Memory Cost | 301.3125 MB    | 225.1679 MB    |
| Speed            | 26582789276 ns | 26281503362 ns |

![]()
