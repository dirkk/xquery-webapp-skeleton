module namespace books = "http://www.basex.org/myapp/books";
import module namespace web="http://basex.org/lib/web";

declare function books:list(){
    for $book in doc('src/main/webapp/models/books.xml')//book
        order by $book/title
    return $book
};
