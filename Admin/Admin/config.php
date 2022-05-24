<?php
session_start();
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'Saurav@9686400179');
define('DB_NAME', 'admin');
$conn = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/admin/');
define('SITE_PATH','http://localhost/admin/');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');

define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');

if ($conn == false) {
    die('Error:Cannot Connect');
}
?>