import module namespace web="http://basex.org/lib/web";
declare option output:template "simple.html";
declare option output:method "xhtml";

<div>
{
	if( not(empty($GET("title")))) then
		let $book := books:find-by-name($GET("title"))
		return  (
			<dl class="book">
			{
			for $prop in $book/*
			return (<dt>{name($prop)}</dt>, <dd>{$prop/text()}</dd>)
			}</dl>, <a href="?">Back</a>)
	else
		<ul class="book">{
	  	for $book in books:list()
				let $title := $book/title/text()
	  	return 
	    <li><a href="?title={$title}">{$title}</a> written by <em>{$book/author/text()}</em></li>
		}
		</ul>
}</div>

