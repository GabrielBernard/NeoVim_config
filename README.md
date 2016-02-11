NeoVim_config
==============

This is a Mac OS X nvimrc file with a lot of customization.

I'm trying to improve it to be a very clear and very usefull nvimrc so that in case
something happen, I always have a backup file to quickly setup a new nvim.

This nvimrc uses ryanoasis' nerd-fonts. It is necessary to download and install some of those fonts
to have access to the icons in airline, NEERDTree, etc.

I use nvim in my terminal so the non-ASCII font must be setup to one of the patch nerd-font for the
icons to show.

fzf
---
To use fzf, it is necessary to install it.
On OS X, with homebrew : 

```bash
brew install fzf

# Install shell extensions
/usr/local/opt/fzf/install
```

With this method, this nvimrc will work directly, but it is also possible to just download fzf via github into the directory of your choice and install it. Example: 

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
If done by github the fzf directory in the nvimrc must be change to the directory of the fzf binary.

fzf is very powerful and thus, can easily replace ctrl-p, this is why it is not in this nvimrc.

deoplete
--------
This is **THE** auto completion tool. See the github for more information, but it can be use to auto complete nearly anything!

<https://github.com/Shougo/deoplete.nvim>

Spell
------
There is a bug in NeoVim spell. You need to activate spell manually by entering the command :set spell so that NeoVim sees that a spell folder with dictionaries exist. Once that is done once, you can activate the auto setting of spell check in any language for any type of file.

True-color
-----------
Lastly, my nvim is setup to use true-colors, so a true-color capable terminal must be use.
Iterm2-nightly is a very good terminal that have true-colors enable and I recommend to use it.

