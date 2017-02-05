# ReadME

## Setup Python
### Mac

参考 http://qiita.com/oct_itmt/items/2d066801a7464a676994

- pyenvをいれよう
```
$ brew install pyenv
$ echo 'export PYENV_ROOT="${HOME}/.pyenv"' >> ~/.bash_profile
$ echo 'export PATH="${PYENV_ROOT}/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
$ echo 'export PATH="${HOME}/.local/bin"' >> ~/.bash_profile

$ exec $SHELL -l
```
- python 設定します
```
$ pyenv install 3.4.3
$ pyenv local 3.4.3
```

### Windows

- Webからダウンロード
https://www.python.org/downloads/

## Setup jupyter 

```
$ pip install --user jupyter
$ pip install --user -U pip setuptools 
$ pip install --user numpy
$ pip install --user chainer
$ pip install --user matplotlib

```

## Start jupyter
```
$ jupyter notebook
```
## Setup docker(PaintChainer)

- Setup docker

```
$ docker pull liamjones/paintschainer-docker
$ docker run -p 8000:8000 -e PAINTSCHAINER_GPU=-1 liamjones/paintschainer-docker
```
