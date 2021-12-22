## 1. Install R >= 4.0
```
$ sudo su
$ apt undate -qq
$ apt install --no-install-recommends software-properties-common dirmngr
$ wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
$ add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
$ apt install --no-install-recommends r-base
$ exit
```

## 2. Install RStudio
```
$ sudo apt-get install gdebi-core
$ wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-2021.09.1-372-amd64.deb
$ sudo gdebi rstudio-server-2021.09.1-372-amd64.deb
```

## 3. Happy Hacking!
Access the server! <br>
http://[server-ip]:8787

