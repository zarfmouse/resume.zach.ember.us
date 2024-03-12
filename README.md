# Creation

## Jekyll and Docker

Jekyll (and Ruby scripts in general) is tricky to build and
maintain. Rather than hassle with that just install
[docker](https://www.docker.com/) and use the
[jekyll/jekylli](https://hub.docker.com/r/jekyll/jekyll/) container.

See [`bin/jekyll.docker`](bin/jekyll.docker) for how to launch jekyll
in docker with arbitrary arguments passed to jekyll.

## Create the blank Jekyll Site
```
jekyll.docker new resume.zach.ember.us.jekyll
```

Due to an error with the `webrick` Gem, run the following once after
intializing the blank site:
```
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll sh -c "bundle add webrick"
```

# Serving

```
jekyll.docker serve
```
