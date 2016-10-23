# users generic .zshrc file for zsh(1)

# zsh-completionsを利用する Github => zsh-completions

case ${OSTYPE} in
  darwin*)
    if [ -e /usr/local/share/zsh-completions ]; then
      fpath=(/usr/local/share/zsh-completions $fpath)
      autoload -U compinit
      compinit -u
    fi
    ;;
  linux*)
    if [ -e ~/.zsh/zsh-completions/src ]; then
      fpath=(~/.zsh/zsh-completions/src $fpath)
      autoload -U compinit;compinit
      zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                           /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin \
                           /usr/local/git/bin
    fi
    ;;
esac
