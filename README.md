XQuery Web App Skeleton
=======================

This packaged is used to develop standalone web applications using XQuery.

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
this will fetch all needed packages and start a webserver at [localhost:8080](http://localhost:8080 "Inline XQuery in your Browser").



Source
------

The source files that power your webapplication reside in `src/main/webapp`. 


`basex-web` is able to parse both, `*.htm(l)` files that contain *inline xquery* like  `<?xq 1 to 10 ?>` 
as well as *.xq(y) files in pure functional mode.

More documentation will be added soon.