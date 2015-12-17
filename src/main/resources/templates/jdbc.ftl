<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spring JDBC & JPA</title>
</head>
<body>
<h2>Products:</h2>

<#list products as product>
    <h2>${product.getName()} - ${product.getSize()} - ${product.getPrice()}</h2>
</#list>
</body>
</html>