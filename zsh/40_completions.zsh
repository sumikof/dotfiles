# users generic .zshrc file for zsh(1)

# zsh-completionsを利用する Github => zsh-completions

case ${OSTYPE} in
    darwin*)
        fpath=(/usr/local/share/zsh-completions $fpath)
        autoload -U compinit
        compinit -u
        ;;
    linux*)
        fpath=(~/.zsh/zsh-completions/src $fpath)
        autoload -U compinit;compinit
        zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin \
                             /usr/local/git/bin
        ;;
esac
