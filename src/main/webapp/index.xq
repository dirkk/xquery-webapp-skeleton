declare option output:omit-xml-declaration "no";
declare option output:method "xhtml";
declare option output:include-content-type "yes";
declare option output:doctype-public "-//W3C//DTD XHTML 1.1//EN";
declare option output:doctype-system "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd";
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>DeepFS – Your files, your stuff </title>
  <meta name="author" content="Michael Seiferle" />
</head>
<body>
  <div id="container">
  <h1>Hello World.</h1>
  {
    1 to 10
  }
  </div>
  <hr />
  <h3>Source Code of the above example</h3>
  <pre>
    &lt;div id=&quot;container&quot;&gt;
    &lt;h1&gt;Hello World.&lt;/h1&gt;
    {{
      1 to 10
    }}
    &lt;/div&gt;
    
  </pre>
  <hr />
  <a href="index.html">&lt; Back to the inline XQuery Example</a>
</body>
</html>