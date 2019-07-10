# goenv

A simple tool to manage local go version.

## Install

```
$ git clone https://github.com/lily-lee/goenv.git ~/.goenv

$ echo 'export PATH=$PATH:~/.goenv' >> ~/.zprofile // or .bashrc, .bash_profile etc.

$ source ~/.zprofile
```


## Usage

```
goenv, manage your go version.

goenv [commands] [versions]

[commands]
    remote      list golang versions from golang.org.
    list        list local go versions.
    install     install a certain go. eg: goenv install 1.11.5.
    use         change local go version. eg: goenv use 1.11.5.
    current     show current go version.
    version     show goenv version.
    help        show help.

```
