# List all files (one per line) and then count lines and print the result.
# Using Argument $1 which refers to Command line argument passed to this script
ls $1 -l | wc -l
