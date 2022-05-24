<?php
require('config.php');
require('function.inc.php');
require('add_to_cart.inc.php');


$pid = get_safe_value($conn, $_POST['pid']);
$qty = get_safe_value($conn, $_POST['qty']);
$type = get_safe_value($conn, $_POST['type']);

$productSoldQtyByProductId = productSoldQtyByProductId($conn, $pid);
$productQty = productQty($conn, $pid);

$pending_qty = $productQty - $productSoldQtyByProductId;

if ($qty < 1) {
} else {
	if ($qty > $pending_qty) {
		echo "not_avaliable";
		die();
	}

	$obj = new add_to_cart();

	if ($type == 'add') {
		$obj->addProduct($pid, $qty);
	}

	if ($type == 'remove') {
		$obj->removeProduct($pid);
	}

	if ($type == 'update') {
		$obj->updateProduct($pid, $qty);
	}
}
echo $obj->totalProduct();
