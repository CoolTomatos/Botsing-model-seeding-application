
## inputs
pid=$1
execution_idx=$2
application=$3
case=$4
version=$5
frame=$6
search_budget=$7
p_object_pool=$8
seed_clone=$9
seed_mutations=${10}
##

## wait for the process to finish
while kill -0 "$pid"; do
            sleep 1
done
python python/write_on_csv_file.py $execution_idx $application $case $version $frame $search_budget $p_object_pool $seed_clone $seed_mutations &
