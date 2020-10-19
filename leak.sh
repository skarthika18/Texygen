#!/bin/bash


#SBATCH -N 1
#SBATCH --mem 128G 
#SBATCH -n 4
#SBATCH --gres=gpu:1
#SBATCH -o leak.stdout
#SBATCH -e leak_error.stderr
#SBATCH -p long
#SBATCH -t 108:00:00

date > start_time.txt

source /home/ksuresh/emu/bin/activate


python main.py -g leakgan -t real 

date > end_time.txt

