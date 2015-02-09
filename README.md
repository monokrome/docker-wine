docker-wine
===========

Provides wine for Docker containers.


*NOTE* Any wine commands should be routed through xvfb. This will emulate an X
server, so that wine will not complain about not being able to find an X
server. An example command might be:

```sh
  xvfb-run -a wine Example.exe
```
