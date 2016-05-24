# Setup Postgresql on Ubuntu 16.04

Update your package lists and install.

```
$ sudo apt-get update
$ sudo apt-get install postgresql
```
Postgresql creates a default user and db called postgres. Login as postgres.

```
$ sudo -i -u postgres
```

Now add your username.
```
$ createuser -drS «USERNAME» # NB: CAPITAL S! Replace «USERNAME» with your system login name.
```
Logout as postgres user and now try create a new default db for your username.

```
$ logout
$ createdb «USERNAME»
```
Check you can now login to postgresql.

```
$ psql

```
If it works you shoudl see the following:

```
psql (9.5.3)
Type "help" for help.

USERNAME=>
```
Exit postgresql.

```
USERNAME=> \q
```

You need to allow your system to modify databases from the localhost without a prompt - this may be a minor security issue depending on who has access to your machine.

You'll need to login as the superuser and edit the file.

```
$ sudo su
$ find /etc | grep pg_hba.conf
```

```
# Change…
host    all             all             127.0.0.1/32            md5
# …to…
host    all             all             127.0.0.1/32            trust
```

Finally save and logout.
