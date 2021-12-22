FROM rocker/rstudio:4.1.2

# Japanese Font
RUN apt-get update \
  && apt-get install -y --no-install-recommends\
    fonts-ipaexfont \
    fonts-noto-cjk \
  && apt-get -y clean \
  && rm -rf /var/lib/apt/lists/*
