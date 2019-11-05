# Containerized notebook environment.

Avoid polluting local environments while prototyping in a notebook.


Build the image.

```
docker build -t jupyter-container .
```

Then launch the container with
```
docker run -p 8888:8888 -v $LOCAL_DIR:/opt/notebooks jupyter-container:latest
```
Where ```$LOCAL_DIR``` is a local directory you wish to bind inside your working directory.

