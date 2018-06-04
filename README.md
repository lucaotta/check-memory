# check-memory
Scripts to check memory issues in embedded systems

# Instructions
* Copy the `check-memory.sh` script on your embedded system
* Launch ```check-memory.sh `pidof <programname>` ```. This will create a subdir in the current directory with information from `/proc/meminfo` and `/proc/<pid>/status`
* Copy the data to your pc with `scp -r "/path/to/data_dir" .`
* Use `data-to-csv.sh data_dir/` to create a file `data_dir.csv` in the current directory
