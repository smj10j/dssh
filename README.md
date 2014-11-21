docker-dssh
====

Uses nsenter to provide a terminal to a Docker container. Looks and feels like an ssh client.



Installation
------------


```bash
gem install docker-dssh
```

[![Build Status](https://travis-ci.org/smj10j/docker-dssh.svg?branch=master)](https://travis-ci.org/smj10j/docker-dssh)


Usage
-----

Assuming you have a docker container already started and currently running:


```bash
dssh <container-id>
```


If you only have one container running, you can leave off the container-id:

```bash
dssh
```


If you require sudo to use docker, you'll also have to sudo dssh.




[![dssh API Documentation](https://www.omniref.com/ruby/gems/docker-dssh.png)](https://www.omniref.com/ruby/gems/docker-dssh)




