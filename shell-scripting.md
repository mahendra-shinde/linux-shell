# Basic Linux Shell Scripting


## Script1 : Count the number of files in current directory

1.  Launch `vi` with new file.

    ```
    $ vi script1.sh
    ```

2.  Enter following script1

    ```
    # List all files (one per line) and then count lines and print the resulti
    ls -l | wc -l
    ```
3.  Mark the file `executable`

    ```
    $ chmod +x script1.sh
    ```

4.  Run or Execute your script (Override the default behaviour: Search given file/command in PATH enviornment)

    ```
    $ ./script1.sh
    ```

5.  Create a copy of `script1.sh` with new name `script2.sh`

    ```
    $ cp script1.sh script2.sh
    ```

6.  Add these lines to file (delete old contents)

    ```bash
    # List all files (one per line) and then count lines and print the result.
    # Using Argument $1 which refers to Command line argument passed to this script
    ls $1 -l | wc -l
    ```

7.  Create one more copy `script3.sh` and add following contents.

    ```bash
    # Using Argument $1 which refers to Command line argument passed to this script
    # Verify if atleast ONE argument is supplied to script
    # -eq For equality
    # -ge For Greater than or Equal
    # -le For Lesser or Equal
    # -ne For Not equal

    if [ "$#" -ge 1 ]; then
            echo "Counting the files from directory $1"
    else
            echo "You did not provide any directory, so geting files from current directory instead"
    fi

    ls $1 -l | wc -l

    ```

8.  Create a new file for `case` statement (Switch case)

    ```shell
    $ vi script6.sh
    ```

    Add following script inside script6.sh
    
    ```bash
    ## Example of SWITCH statement
    if [ "$#" -lt 3 ]; then
            echo "Please provide THREE arguments"
            return;
    fi
    n1=$1
    n2=$3
    opr=$2
    case $opr in
        "+")
            sum=$(( n1+n2 ))
            echo "Sum is $sum"
            ;;
        "-")
            sub=$(( n1-n2 ))
            echo "Sub is $sub"
            ;;
        "x")
            mul=$(( n1*n2 ))
            echo "Multiplication is $mul"
            ;;
        *)
            echo "Sorry, I was not taught this operation in maths class"
            ;;
    esac
    ```

9.  Now mark the file as `executable` and the launch first with correct arguments and then with fewer arguments

    ```bash
    $ ./script6.sh 100 + 12
    # You would get output 112
    $ ./script6.sh 100 12
    # You would get an error due to fewer parameters
    $ ./script6.sh 100 % 12
    # the default statement from switch case would get invoked
    ```

10. Loops in Shell script.
    Example: 
    > NOTE: the first line is called SheBang (choose SHELL to execute script)
    ```bash
    #!/bin/bash
    ## Shell Syntax
    for x in {1..10}
    do
            echo "Hello World $x"
    done
    ## C Like syntax
    for (( x=1; x<11; x++ ))
    do
            echo "Hello India $x"
    done

    ```

    A Script to create a file (1st Argument) with a line of text (2nd Argument) and repeation (3rd argument).
    Example:
        $ ./script7.sh myfile.log "INFO: This is info " 10

    Code
    ```bash
    #!/bin/bash
    # Verify if THREE arguments are present, otherwise QUIT!
    if [ "$#" -lt 3 ]; then
            echo "This script requires 3 arguments"
            return;
    fi
    # Verify if file exists, otherwise create an empty file
    if [ ! -e $1 ]; then
        touch $1
    fi
    # add message $2 into file $1, exactly $3 times
    if [ -f $1 ]; then
            echo "File found, lets add lines"
            for (( x=1; x<=$3; x++)) ; do
                    echo "Writing line"
                    echo "$2" >> $1
            done
    fi

    ```