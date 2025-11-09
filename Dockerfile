FROM ubuntu

RUN apt-get update && apt-get -y upgrade 

RUN apt-get -y install texlive-fonts-extra texlive-latex-base texlive-fonts-recommended texlive-luatex texlive-latex-extra

RUN apt-get clean

RUN luaotfload-tool --update

WORKDIR /workspace

ENTRYPOINT ["lualatex"]
