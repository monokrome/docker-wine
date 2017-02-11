docker-wine
===========

This repo provides a means for running Windows applications in docker via wine.
It includes xvfb-run for running GUI-based applications in cases where a GUI is
not necessary.


**NOTE:**

*If you want to run with a GUI, you will need to derive this image
by using `FROM monokrome/wine` in your own Dockerfile. You can then have the X
client configured to use an Xserver on your host machine.*


```sh
# Run a Windows executable without a GUI
xvfb-run -a wine Example.exe
```

