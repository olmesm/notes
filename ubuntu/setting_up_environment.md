# Setup Ubuntu 16.04 for development

## Get Chrome
```
$ wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
$ sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
$ sudo apt-get install -f
```

## Setup dependancies

```
$ sudo apt-get update
$ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev ruby-dev
$ sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev liblzma-dev libgmp-dev
$ curl -L https://get.rvm.io | bash -s stable
```

This will error - copy all the text in the error message regarding the gpg key and then paste to add the key.

```
$ gpg2 --keyserver hkp://keys.gnupg.net --recv-keys xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

then continue

```
$ curl -L https://get.rvm.io | bash -s stable
$ source ~/.rvm/scripts/rvm
$ rvm install 2.2.2
$ rvm use 2.2.2 --default
$ ruby -v
```

```
$ echo "gem: --no-ri --no-rdoc" > ~/.gemrc
$ gem install bundler
```

## Setup Github

```
$ git config --global color.ui true
$ git config --global user.name "USERNAME"
$ git config --global user.email "USERNAME@EMAIL.COM"
```
Generate key
```
$ ssh-keygen -t rsa -C "USERNAME@EMAIL.COM"
$ cat ~/.ssh/id_rsa.pub
```
Copy the text you see in terminal that looks like

```
ssh-rsa xxxxxxxxxxxxxxxxxxxxxx USERNAME@EMAIL.COM
```

Check all is ok
```
$ ssh -T git@github.com
```

## Setup Heroku
```
$ wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
$ heroku login
```

## Setup Homebrew
```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
$ sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
$ echo 'export PATH="$HOME/.linuxbrew/bin:$PATH" export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH" export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' >> ~\bash.rc
$ echo 'export PATH="~/.linuxbrew/bin:$PATH"' >> ~/.bash_profile
$ sudo apt install linuxbrew-wrapper
$ brew doctor
```

## Install vim

$ sudo apt-get update
```
$ sudo apt-get install vim
```

## Install Atom

```
$ sudo add-apt-repository ppa:webupd8team/atom
$ sudo apt-get update
$ sudo apt-get install atom
$ atom
```
