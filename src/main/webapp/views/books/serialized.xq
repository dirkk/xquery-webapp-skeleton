import module namespace web="http://basex.org/lib/web";
declare option output:template "simple.html";
declare option output:method "xhtml";

<pre>{serialize( books:list())}</pre>