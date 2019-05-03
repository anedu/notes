<?php $con = mysqli_connect('127.0.0.1', 'root', '', 'date');
$query = mysqli_query($con, "INSERT INTO example (date, holiday, file) VALUES ('" . $_POST['date'] . "', '" . $_POST['text'] . "', 'images/" . $_FILES['file']['name'] . "')");
move_uploaded_file($_FILES['file']['tmp_name'], 'images/' . $_FILES['file']['name']);
header('Location: http://62lesson/index.php');
 ?>