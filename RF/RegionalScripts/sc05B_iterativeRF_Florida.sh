#!/bin/bash                                         
#SBATCH -p day                                           
#SBATCH -n 1 -c 1  -N 1                                  
#SBATCH -t 24:00:00                                      
#SBATCH --mem-per-cpu=100000
#SBATCH -o /gpfs/scratch60/fas/powell/esp38/stdout/sc05B_iterativeRF_Florida.sh.%J.out  
#SBATCH -e /gpfs/scratch60/fas/powell/esp38/stdout/sc05B_iterativeRF_Florida.sh.%J.err  
#SBATCH --mail-type=ALL                                  
#SBATCH --mail-user=email                                
#SBATCH --job-name=sc05B_iterativeRF_Florida.sh                     


# sbatch   /home/fas/powell/esp38/scripts/MOSQLAND/RF/sc05B_iterativeRF_Florida.sh  


module load Apps/R/3.3.2-generic

module load Rpkgs/RGDAL/1.2-5

R --vanilla -no-readline -q  -f  /home/fas/powell/esp38/scripts/MOSQLAND/RF/sc06B_iterativeRF_Florida.R  

