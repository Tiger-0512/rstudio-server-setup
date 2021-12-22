docker build -t rstudio-server-image .
docker run --rm \
  -p 8787:8787 \
  -d \
  --name rstudio-server \
  -v ~/:/home/rstudio \
  -e PASSWORD=password \
  -e USERID=$(id -u) \
  -e GROUPID=$(id -g) \
  rstudio-server-image

