<?php $con = mysqli_connect('127.0.0.1', 'root', '', 'date');
$query = mysqli_query($con, "UPDATE example SET holiday = '" . $_POST['input'] . "', date = '" . $_POST['date'] . "' WHERE id = " . $_POST['id']);
header('Location: http://62lesson/index.php');
 ?>