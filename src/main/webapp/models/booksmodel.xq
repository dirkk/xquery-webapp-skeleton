module namespace booksmodel = "http://basex.org/lib/booksmodel";
import module namespace web="http://basex.org/lib/web";

declare function booksmodel:find-all(){
    for $book in doc('books')//book
        order by $book/title
    return $book
};

declare function booksmodel:find-by-author($name){
    for $book in doc('books')//book/author[. = $name]/parent::book
    return $book
};

declare function booksmodel:find-by-name($name){
    for $book in doc('books')//book[title = $name]
    return $book
};

