# MySqrol
## Scrollable interface for the MySQL CLI tool.

Usage:
After running the install script, run the following on the mysql command line:

```mysql
mysql> pager mysqrol;
```

You can also add a line to /etc/mysql/my.cnf to use mysqrol automatically

```ini
[mysql]
pager = mysqrol ## Add this line
```
