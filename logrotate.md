## Log Rotate

1.  Verify if logrotate is present in system

    ```shell
    $ logrotate --version
    ```

2.  Install if not present

    ```bash
    $ sudo yum install -y logrotate
    ```

3.  Create a configuration file (in local user home)

    ```bash
    $ vi ~/logrotate.conf
    ```

4.  Add following text, save and quit VI. (Please replace /home/mahendra with your home directory) save file with name rotate1.conf

    ```bash
    /home/mahendra/logs/*.log {
        hourly
        missingok
        size 10k
        rotate 24
        create
    }
    ```

5.  Now, lets create some sample log file in directory /home/$USER/logs

    ```bash
    $ logrotate rotate1.conf --state ~/state --force
    ```

6.  Validate the logrotate by using ls command

    ```bash
    $ ls -lh *.gz
    ```

7.  View the state file for debuging 

    ```bash
    cat ~/state
    ```