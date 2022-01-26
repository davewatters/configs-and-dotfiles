#
# Set the shell prompt to current working dir
# ond make it stand out with colour. Keep it simple. 
#
# (old Bash prompt PS1='\e[1;32m\u:\e[m\e[0;34m\w\e[m$ ')
PS1='%B%F{green}%~%#%f%b '

# Create custom aliases
#
alias ll='ls -lahG'
alias cls='clear'
alias p3='ping -c3'
alias py=python3
alias vs=code
alias bak2usb=~/dev/scripts/bak2usb.sh
alias activate='source .venv/bin/activate'
alias pwnytrap=~/dev/scripts/pwnytrap.sh

# Customise the PATH
#
# Prepend ~/bin to PATH for custom user scripts
#PATH=~/bin:${PATH}

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"


# Warning: Homebrew's "sbin" was not found in your PATH but you have installed
# formulae that put executables in /usr/local/sbin.
# Consider setting your PATH for example like so:
#  echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc

# Added to use the Homebrew install of Python 3
# For OSX 10.13 (High Sierra) or newer use the following path
PATH="/usr/local/opt/python/libexec/bin:${PATH}"
export PATH

