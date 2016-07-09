<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/assets/application.css">
</head>
<body>
<div id="catch">
<?php
require('../lib/speaker.php');
echo Speaker::sayHello();
?>
</div>
<div id="button01"></div>
</body>
</html>