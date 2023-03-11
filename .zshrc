# Set the shell prompt to current working directory
# and make it stand out with colour. Keep it simple 
# Customise prompt to show Git branch
parse_git_branch() {
  # returns '[<active_git_branch_name>]'
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
setopt PROMPT_SUBST  # ensures prompt function is evaluated
PS1='%B%F{green}%~%#%f%b%F{yellow}$(parse_git_branch)%f '

# Old Bash prompt PS1='\e[1;32m\u:\e[m\e[0;34m\w\e[m$ '
# for bash: func set_ps1(){PS1='stuff_below'} ; PROMPT_setps1
# git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# branch_name=$(git symbolic-ref --short HEAD 2>/dev/null)

# Create custom aliases
#
alias ll='ls -lahG'
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# Customise the PATH
#
# Add Visual Studio Code (run code from cmd line)
PATH=${PATH}:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Homebrew v3.6.21 caveat -  unversioned symlinks for python, pip etc
# PATH=/usr/local/opt/python@3.11/libexec/bin:${PATH}
# Homebrew v4.0.5 (Silicon) caveat -  unversioned symlinks for python, pip etc
PATH=/opt/homebrew/opt/python@3.11/libexec/bin:${PATH}
# Prepend ~/bin to PATH for custom user scripts
PATH=~/bin:${PATH}
export PATH

