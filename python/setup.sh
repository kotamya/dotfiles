#!/bin/sh

echo "------ python setup start ------"

conda create -y -n mainenv python=3.9.1
conda activate mainenv
conda install -y -c conda-forge -f requirements.txt

conda deactivate

echo "------ python setup end ------"