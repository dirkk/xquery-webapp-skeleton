import module namespace web="http://basex.org/lib/web";
declare option output:template "simple.html";
declare option output:method "xhtml";

<div>
	<h1>The Books list!</h1>
	<ul class="book">{
  	for $book in books:list()
  	return 
    <li>{$book/title/text()} written by <em>{$book/author/text()}</em></li>
	}
	</ul>
</div>




