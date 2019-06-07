# https://unix.stackexchange.com/questions/103920/parallelize-a-bash-for-loop
# evaluate the algorithm in parallel
NUM_CORES=2
export MKL_NUM_THREADS=$NUM_CORES OMP_NUM_THREADS=$NUM_CORES
for seed in {1..2}
do
    (sleep 0.3 && nohup python a2c.py --seed $seed) >& /dev/null &
done