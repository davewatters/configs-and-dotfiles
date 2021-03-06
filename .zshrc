#
# Set the shell prompt to current working dir
# ond make it stand out with colour. Keep it simple. 
#
# ( old Bash prompt PS1='\e[1;32m\u:\e[m\e[0;34m\w\e[m$ ')
# for bash: func set_ps1(){PS1='stuff_below'} ; PROMPT_setps1
# git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# branch_name=$(git symbolic-ref --short HEAD 2>/dev/null)
# Customise prompt to show Git branch
parse_git_branch() {
  # returns [<active_git_branch_name>]
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
setopt PROMPT_SUBST  # ensures prompt function is evaluated

PS1='%B%F{green}%~%#%f%b%F{yellow}$(parse_git_branch)%f '

# Create custom aliases
#
alias ll='ls -lahG'
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# Customise the PATH
#
# Added for Homebrew's "sbin": you have installed formuale
# that put executables in /user/local/sbin 
PATH="/usr/local/sbin:${PATH}"
# Added to use the Homebrew install of Python 3
# For OSX 10.13 (High Sierra) or newer use the following path
PATH="/usr/local/opt/python/libexec/bin:${PATH}"
# Prepend ~/bin to PATH for custom user scripts
PATH=~/bin:${PATH}
export PATH
