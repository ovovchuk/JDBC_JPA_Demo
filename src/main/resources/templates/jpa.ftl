<!doctype html>
<html lang="en">
<#include "head.html">
<body>
<h1>There are ${products!?size} products:</h1>
<#--<#list products as product>
    <#if (product.price > 550 && product.size == "10")>
        <h2>${product.name} - ${product.getSize()} - ${product.price}</h2>
    </#if>
</#list>-->
<#if products??>
    <#list products as product>
        <#--<h3>${product.name?upper_case} - ${product.size} - ${product.price} - ${product.green?c}</h3>-->
        <#--<h3>${product.name?cap_first} - ${product.size} - ${product.price} - ${product.green?string("Y", "N")}</h3>-->
        <h3>${product?counter}. ${product.name?cap_first} - ${product.size} - ${product.price} - ${product.green?c}</h3>
    </#list>
</#if>
</body>
</html>