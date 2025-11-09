# docker-LaTeX
Dockerfile Ubuntu with LaTeX

Assuming you're standing in the same directory as the Dockerfile build your docker image with:
```
docker build -t <your_image_name> .
```
Then move where your LaTeX file is and run:
```
docker run --rm -v $(pwd):/workspace <your_image_name> <your_LaTeX_file.tex>
```



