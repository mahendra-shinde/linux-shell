How Linux user on Same Linux server can communicate.

1. Check who else is connected?

    ```shell
    $ who
    ```

2.  Send a message to another user 'xyz' and terminal is 'pts/10'

    ```shell
    $ write xyz pts/10
    Hello friend, do you want to hang out?
    CTRL + D
    ```

3.  The MAIL utility. (GNU Utils)

    ```shell
    $ mail 
    # Install if not already installed.
    $ sudo yum install -y mailutils
    ```

4.  Send a mail to another linux user user2@localhost 

    ```bash
    $ mail user2@localhost
    Subject: need help to resolve null pointer exception

    Hi,
    Please help me with this exception at line# 123 at DummyApp.java
    CTRL + D
    ```

5.  Access your inform to get new mails and send replies

    ```bash
    $ mail
    ## Once you get list of mails, read the 1st message by entering number 1
    & 1
    ## Mail should be displayed here
    ## Press 'r' to reply
    & r
    ## Write whatever reply you want to send 
    Sorry, I am equally bad in java. Why dont you ask that new guy who joined yesterday?
    He said he has done OCPJP certification, he would definitely help.
    CTRL + D
    ```