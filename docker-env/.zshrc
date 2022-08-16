# Line Feed Code: LF

export LANG=ja_JP.UTF-8

source "/root/.local/share/zinit/zinit.git/zinit.zsh"

# https://zenn.dev/nagan/articles/8168ba0ca407ad
zi light b4b4r07/enhancd
zi light zsh-users/zsh-completions


# https://github.com/zdharma-continuum/zinit#more-examples

# Load the pure theme, with zsh-async library that's bundled with it.
zi ice pick"async.zsh" src"pure.zsh"
zi light sindresorhus/pure

# A glance at the new for-syntax – load all of the above
# plugins with a single command. For more information see:
# https://zdharma-continuum.github.io/zinit/wiki/For-Syntax/
zinit for \
    light-mode \
  zsh-users/zsh-autosuggestions \
    light-mode \
  zdharma-continuum/fast-syntax-highlighting \
  zdharma-continuum/history-search-multi-word \
    light-mode \
    pick"async.zsh" \
    src"pure.zsh" \
  sindresorhus/pure

# Binary release in archive, from GitHub-releases page.
# After automatic unpacking it provides program "fzf".
zi ice from"gh-r" as"program"
zi light junegunn/fzf