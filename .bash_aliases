
#ls mappings
alias ll="ls -alF"
alias l="ls -CF"
alias la="ls -A"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\''' #recursive file/folder listing
alias lsd='ls -l | grep "^d"' #directory listing only

#Aliases to move around directories.
alias u='cd ..'
alias uu='cd ../..'
alias d='cd -'
alias h='cd ~'
alias b='cd /'

#special grep aliases
alias hexgrep='grep -R -n "[\x80-\xFF]"'
alias hist='history | grep '
alias cgrep='grep --color=always'
alias gp="grep -P"
alias gf="grep -F"
alias controlgrep="grep '[[:cntrl:]]'"
alias nprintgrep="grep '[^[:print:]]'"

#file cleanup scripts
alias trim="sed -e 's/^[[:space:]]*//g' -e 's/[[:space:]]*\$//g'"
alias confcat="sed -e 's/[#;].*//;/^\s*$/d' "$@""

#sudo stuffs
alias redo='\sudo !!' #sudo previous command



#screen functions
alias sc="screen -S"
alias sl="screen -ls"
alias sr="screen -r"

#extracts many files with one command

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# Debian & Ubuntu specific
alias upgrade='apt-get update && apt-get upgrade && apt-get clean'

alias dist-upgrade="sudo apt-get -qq update ; sudo apt-get dist-upgrade --assume-yes --force-yes"

cleankernels() {
    dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get purge
}
