# docker-LuaLaTeX
Dockerfile Ubuntu with LaTeX

Assuming you're standing in the same directory as the Dockerfile, build your docker image with:
```
docker build -t <your_image_name> .
```
Then move where your LaTeX file is and compile your .tex source with:
```
docker run --rm -v $(pwd):/workspace <your_image_name> <your_LaTeX_file.tex>
```
## Rationale

moderncv has templates with some colors, under Ubuntu in my previous machine (24 LTS) it compiled fine.
Under Debian 13 (Upgraded from 12) it compiles to only black/grey text, since everything seemed to be
ok and I couldn't find the error in the TeX/LaTeX installation I decided to create this Dockerfile and
compile it with Ubuntu.

## TODO

- ~Specify Ubuntu version in the Dockerfile (I had 24.04 on my PC)~
- Configure actions to upload an image to Docker Hub
- Change image definition so executable can be overriden?
