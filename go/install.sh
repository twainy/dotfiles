# Check for Golang
if test ! $(which go)
then
  if [ "$(uname -s)" == "Darwin" ]
  then
      echo " Please Installing Golang."
      exit 0
  else
      FILENAME=go1.4.1.linux-amd64.tar.gz
      wget https://storage.googleapis.com/golang/$FILENAME
      tar zxvf $FILENAME
      sudo rm -rf /usr/local/go
      sudo mv go /usr/local/go
      sudo update-alternatives --install /usr/bin/go go /usr/local/go/bin/go 10
      sudo update-alternatives --set go /usr/local/go/bin/go
  fi
  exit 0
fi

go get github.com/lestrrat/peco/cmd/peco/
