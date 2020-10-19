#!/bin/bash


#SBATCH -N 1
#SBATCH --mem 128G 
#SBATCH -n 4
#SBATCH --gres=gpu:1
#SBATCH -p long
#SBATCH -t 108:00:00
#SBATCH -o seq.stdout
#SBATCH -e seq_error.stderr

date > start_time.txt

source /home/ksuresh/emu/bin/activate


python main.py -g seqgan -t real 

date > end_time.txt

