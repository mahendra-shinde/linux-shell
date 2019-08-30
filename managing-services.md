## Checking Service status

1. On Older system (RHEL/CentOS 6)

    ```bash
    $ sudo service ntpd status
    $ sudo service ntpd start
    $ sudo service ntpd stop
    ```

2.  On Newer System (RHEL/CentOS 7+)

    ```bash
    $ sudo systemctl status ntpd
    $ sudo systemctl stop ntpd
    $ sudo systemctl start ntpd
    ```
