# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
module load gcc/6.2.0
module load R/3.3.3
module load plink2/1.90
module load conda2
export PYTHONSTARTUP="/home/dk207/.pythonstartup.py"
#export PYTHONPATH="${PYTHONPATH}:/home/dk207/pkg/ldsc/ldscore"

# Settings
set -o vi
 
# Python virtual environment
#source ~/venv/bin/activate
#source activate cvenv

# Variables
daniel=/n/groups/price/daniel/
scratch=/n/scratch2/dk207/

# colorize terminal prompt
# PS1="[\u@\h \W]\$ " #the default prompt
# PS1="[\[\e[01;32m\]\u@\h\[\e[00m\] \[\e[01;34m\]\W\[\e[00m\]]\$ " # basic colorized
PS1='`if [ ! -z "$CONDA_DEFAULT_ENV" ]; then echo "\[\e[33m\]($CONDA_DEFAULT_ENV) \[\e[00m\]"; fi`[\[\e[01;32m\]\u@\h\[\e[00m\] \[\e[01;34m\]\W\[\e[00m\]]\$ ' # adds conda environment name if it exists. if you do this, run ~$ conda config --set changeps1 false

