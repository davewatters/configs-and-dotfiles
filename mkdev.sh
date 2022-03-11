#!/usr/bin/env bash
#
# Prep a dev project folder with defaults.
#
# Make sure to source this script to change into the new dir
#  e.g. $source ./mkdev.sh <new_dir> or $. ./mkdev.sh <new_dir>
#
FILE_VERSION="v1.0.3"
DOTFILE_SOURCE_DIR="$HOME/dev/dotfiles/"

show_help () {
  echo "makdev.sh $FILE_VERSION"
  echo "Make directory_name in current folder." 
  echo "Create as dev project structure with .gitignore,"
  echo "readme etc., Ititialises as a Git repo."
  echo "Optionally activate a Python virtual environment."
  echo "Source this script to change into the new directory when done."
  echo
  echo "Usage: source mkdev.sh [-h | -p] directory_name"
  echo "  Options:"
  echo "    -h, --help  :  Show this Help info"
  echo "    -p          :  Initialise dir as Python virtual env"
  echo
}

# check that file was sourced
if [ "$0" = "$BASH_SOURCE" ]; then
  echo "Error: This script must be sourced, not run directly." >&2;
  echo "Use -h or --help for help."
  exit 1;
fi

# check if any or too many args passed in
if [ $# -eq 0 ] || [ $# -gt 2 ]; then
  show_help;
  return 1;
fi

# check args
dev_dir=$1
init_python_venv=0
if [ $# -gt 0 ]; then
  case $1 in
    -h|--help) show_help; return 0;;
    -p) init_python_venv=1;
        dev_dir=$2;;
    -*) echo "Invalid option: $1. Use -h or --help for help."; return 1;;
  esac  
fi
if [ -d $dev_dir ]; then
  echo "Can't create: "$dev_dir". Directory already exists.";
  return 1;
fi

echo "Ceating new project directory: "$dev_dir
mkdir $dev_dir
cd $dev_dir
echo "Creating README file"
touch README.md
echo "# README file for $dev_dir Project Directory" > README.md
echo "Creating .gitignore file"
cp $DOTFILE_SOURCE_DIR.gitignore .
# I like to use a scratch dir during development
mkdir scratch
if [ $init_python_venv -eq 1 ]; then
  echo "Creating Python virtual environment"
  python3 -m venv .venv
  echo "Activating Python virtual environment"
  source .venv/bin/activate
fi
echo "Initialise Git repo"
git init
git add .
echo "Ready."
