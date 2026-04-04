FROM ubuntu:24.04

RUN apt-get update \
 && apt-get -y install \
       texlive-fonts-extra \
       texlive-latex-base \
       texlive-fonts-recommended \
       texlive-luatex \
       texlive-latex-extra \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN luaotfload-tool --update

WORKDIR /workspace

CMD ["lualatex"]
