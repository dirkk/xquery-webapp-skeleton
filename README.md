XQuery Web App Skeleton
=======================

This packaged is used to develop stand-alone web applications using XQuery.

It is powered by [basex-web](https://github.com/micheee/basex-web). See that package for more details on how this actually works.

Organization
------------

Usage
-----
To get the your application up and running 
either clone this project:
<code>
$ git clone https://micheee@github.com/micheee/xquery-webapp-skeleton.git
</code> 
Once cloned, change to the checked out project and run
<code>
$ mvn jetty:run
</code>
this will fetch all needed java dependencies and start a webserver at [localhost:8080](http://localhost:8080 "XQuery").

`basex-web` relies on two XQuery [packages](http://docs.basex.org/wiki/Packaging "Packaging - BaseX Documentation") to be installed.

To install these run the following from inside BaseX:

    REPO INSTALL /path/to/xquery-webapp-skeleton/src/main/webapp/basex-web-xq-1.0.1-distribution.zip
    REPO INSTALL http://files.basex.org/modules/functx-1.0.xar    

API
---

* You will find some API functionality descriptions in /api.html
* You can access REQUEST parameters `$GET` & `$POST`, e.g. ?name=foo leads for 'foo' to be found `$GET('name')`

Source
------

The source files that power your web application reside in `src/main/webapp`. 

To get started have a look at these folders.

URLs in basex-web are of the form: `/app/{$controller}/{$action}` where controller
resembles a XQuery module named `{$controller}.xq` and `{$action}` maps to a XQuery file located in
`views/{$controller}/{$action}.xq`.

Each view has its containing controller automatically imported.

So the url `/app/blog/index` would map to the XQuery script `/views/blog/index.xq`.

Once the server evaluates the views result, said result ist included into `/layouts/default.html` and returned to the user.

If the server receives a request containing the HTTP header "X-Requested-With" (common in AJAX calls) the default.html is replaced by ajax.html
to provide an empty template for ajax requests.


    .
    ├── controllers
    │   └── blog.xq
    ├── layouts
    │   └── default.html
    ├── models
    │   └── blog.xml
    ├── views
        └── blog
            └── index.xq
