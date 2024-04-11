# Zach Ember's Resume Website

https://resume.zach.ember.us/

This repository uses Jekyll to insert data from a JSON Resume file
into a Material Design Resume template. The result is a static website
which can be rsync'ed to a hosting service.

## Build and Deploy
```
bin/jekyll.docker build
bin/deploy
```

## Preview During Development
```
bin/jekyll.docker serve
open -a "Google Chrome" localhost:4000
```

## How It's Built

### Template

https://templateflip.com/templates/material-resume/

I purchased a license this template to serve as the design basis for
this website. Consequently, none of the code derived from the template
can be open-sourced and you should not use it. The code is provided
here in my repository for educational purposes only.

The template uses the following JavaScript and CSS libraries: 

#### Font Awesome

https://fontawesome.com/

#### Bootstrap

https://getbootstrap.com/
https://en.wikipedia.org/wiki/Bootstrap_(front-end_framework)

##### Material Design for Bootstrap

https://mdbootstrap.com/

#### Animate on Scroll

https://michalsnik.github.io/aos/

### Jekyll

https://jekyllrb.com/
https://hub.docker.com/r/jekyll/jekyll/

Jekyll is a fantastic framework for generating static websites while
separating content from design. I use a docker container with jekyll
to avoid having to maintain all the Ruby dependencies. The script at
bin/jekyll.docker contains the invocation to run jekyll commands via
the container. Simply pass any jekyll command line parameters to
bin/jekyll.docker.

### Resume JSON

https://jsonresume.org/
https://github.com/jsonresume

I've had to extend this standard by adding some additional
properties. I'd like to find ways to bring the JSON this page serves
into line with the standard either by convincing the standard
maintainers to update the standard, forking the standard, or by adding
logic here that derives the fields I need from standard compliant
properties.

### Open Graph

https://ogp.me/

These HTML meta tags customize the rendering of previews in social media shares. 

### vCard (.vcf)

https://en.wikipedia.org/wiki/VCard
https://www.rfc-editor.org/rfc/rfc6350.html

The vCard is currently simply exported from the MacOS
Contacts.app. Per issue #5 I would like to add a process that
generates it via Jekyll from the JSON file.

### PDF

The PDF version of the resume is currently generated simply with the
"Save as PDF" browser function. Per issue #3 I would like to add a
process that generates this automatically upon changes to the jekyll
tree.



