apache2 container for Docker
========================

Decent way to build an Apache 2 server.

Once you've built this Dockerfile as `docker build -t octohost/apache2 .` - your next Dockerfile should look like this:

```
FROM octohost/apache2

ADD . /var/www

EXPOSE 80

CMD ["/bin/bash", "/start.sh"]
```

Simple way to push HTML code up.
