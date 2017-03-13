# Setting up a new Ubuntu Install



1. Get basics for RVM and Linuxbrew.

    ```bash
    sudo apt-get install build-essential curl git python-setuptools -y
    ```


1. [RVM](https://rvm.io/)

    ```bash
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
    ```

1. [Linuxbrew](http://linuxbrew.sh/)

    ```bash
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >>~/.bash_profile
    brew install gcc
    ```

1. ZSH and Terminal

    ```bash
    brew install zsh zsh-completions
    echo "fpath=(/home/buntu/.linuxbrew/share/zsh-completions $fpath)" >> .zshrc
    ```

    Use ZSH

    ```bash
    chsh -s /usr/local/bin/zsh
    ```

    Close terminal and open iterm.

1. [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```

    Add full path to RobyRussell Theme.

    ```bash
    vi ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
    ```

    Change the `c` to a `~` in line 2.

    From

    ```
    PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
    ```

    To

    ```
    PROMPT='${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)'
    ```

1. iTerm Keybindings

    Keybindings for moving between words and lines using CMD and alt.

    Download this [file](./notes/os/mac/setting-up/com.googlecode.iterm2.plist).

    Open preferences and configure iTerm to use custom preferences.

1. Java

    ```bash
    brew cask install java
    ```

1. Brew packages
    ```bash
    brew install android-sdk ant awscli curl git mongodb mplayer thefuck vim
    ```

1. Cask Packages

    ```bash
    brew cask install android-studio angry-ip-scanner apache-directory-studio atom boostnote brave chromium cyberduck day-o eclipse-jee firefox google-chrome insomnia mysqlworkbench postman robomongo slack sts transmission virtualbox visual-studio-code vlc whatsapp zeplin
    ```

1. [NVM](https://github.com/creationix/nvm)

    ```bash
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
    ```

1. Node via NVM

    ```bash
    nvm install node
    nvm use node
    node -v
    ```

    ```bash
    echo 'PATH="./node_modules/.bin:$PATH"' >> ~/.zshrc
    ```

1. Node essentials

    ```bash
    npm i -g surge tree live-server devtool nodemon
    ```

    This was generated with `npm list -g --depth=0`
