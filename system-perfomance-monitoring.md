# System performance monitoring

1.  How long my system is running ?

    ```bash
    $ uptime
    # Output
    # [Current Time] [Time Since Login] [Number of Active Users] [CPU Load Average]
    ```

2.  How many processes are running, how much CPU and RAM is Utilized?

    ```bash
    $ top
    $ htop
    ```

3.  List all processes only 

    ```bash
    $ ps        # Your processes (from current PTS terminal )
    $ ps -ux    # Your processes (from All terminals)
    $ ps -aux    # All processes from ALL users and ALL terminals
    ```

4.  View the Disc Utilization (Human Readable : -h )

    ```bash
    $ df -h
    ```

5.  View total size of current directory. (Summary : -s, Human Readable -h)

    ```bash
    $ du -sh
    ```

6.  