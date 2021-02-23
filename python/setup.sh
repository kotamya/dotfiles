#!/bin/sh

echo "------ python setup start ------"

# conda init
__conda_setup="$(CONDA_REPORT_ERRORS=false '$HOME/Anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "$HOME/Anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/Anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="$PATH:$HOME/Anaconda3/bin"
    fi
fi
unset __conda_setup

conda update -n base -c defaults conda
conda create -y -n mainenv python=3.9.1
conda activate mainenv
conda install -y -c conda-forge --file $HOME/dotfiles/python/requirements.txt

conda deactivate

echo "------ python setup end ------"