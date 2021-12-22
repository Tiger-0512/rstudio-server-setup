## Dependencies
- Ubuntu 18.04 LTS (It may work in other OS, but I recommend using docker.)

## 1. Install R >= 4.0
```
$ sudo su
$ apt update -qq
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
Access http://[server-ip]:8787 and login with your the same account that you use in your linux server! <br>

## Notice
- If you want to stop, start and restart RStudio Server manually, below commands help you.
```
$ sudo rstudio-server stop
$ sudo rstudio-server start
$ sudo rstudio-server restart
```

## Troubleshooting
- If you got error like `'lib = "/usr/local/lib/R/site-library"' is not writable` and cannot install packages, please change the permission of the R library package.
```
$ sudo chmod -R 775 /usr/local/lib/R
$ sudo chgrp -R [your group e.g., sudo; staff] /usr/local/lib/R
```
