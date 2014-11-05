<?php 
require('template/header.php');
require('helpers.php');

require('db/db.php');

if(empty($_GET['url'])){
	$_GET['url']='home';
}
{
controller($_GET['url']);
}
require('template/footer.php');
?>

