import module namespace web="http://basex.org/lib/web";
declare option output:template "simple.html";
declare option output:method "xhtml";
let $name := if( not(empty($GET("name")))) then $GET("name") else "Knorr, Stefan"
return
<pre>{serialize( books:find-by-author($name))}</pre>