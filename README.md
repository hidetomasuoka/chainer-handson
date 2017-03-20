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

## Create Docker

```
docker run -d -p 8888:8888  hidetomasuoka/chainer-handson
```

- docker のコンテナIDを調べる
```
$ docker ps -a
```
- docker 内にログインをする
```
docker exec -it {dockerid} bin/bash
```

- pythonで、下記を実行し、パスワード(例えば xxx)を2回入力し、ハッシュ文字を取得してください。

```
python -c 'from notebook.auth import passwd;print(passwd())'
>>>
sha1:152704c5513c:0e0781437e7d013892eb7662f5ee5a67b235ec1a
```
~/.jupyter/jupyter_notebook_config.py に下記のように追加してください。

```
c.NotebookApp.password = 'sha1:152704c5513c:0e0781437e7d013892eb7662f5ee5a67b235ec1a'
```

- 再起動をする
```
$ docker stop {dockerid}
$ docker start {dockerid}

```

- `localhost:8888` にログイン


## Setup docker(PaintChainer)

- Setup docker

```
$ docker pull liamjones/paintschainer-docker
$ docker run -p 8000:8000 -e PAINTSCHAINER_GPU=-1 liamjones/paintschainer-docker
```
