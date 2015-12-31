<!doctype html>
<html lang="en">
<#include "head.html">
<body>
    <h2>Json test</h2>
    <#assign j = json?eval>
    <h3>${j.firstName} ${j.lastName} ${j.age}</h3>
</body>
</html>