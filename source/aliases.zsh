alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias df='df -h'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias free="free -mt"
alias merge="xrdb -merge ~/.Xresources"
alias update='sudo pacman -Syyu'

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias update-fc='sudo fc-cache -fv'

alias hw="hwinfo --short"

alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"

alias jctl="journalctl -p 3 -xb"

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
