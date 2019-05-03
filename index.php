<!-- простой пример на DATE. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Список дел</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css" integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA" crossorigin="anonymous">
</head>
<body>
	<!-- connect -->
	<?php $con = mysqli_connect('127.0.0.1', 'root', '', 'date'); ?>
	<!-- nav -->
	<div class="container-fluid bg-info text-white">
		<div class="container">
			<div class="row py-3">
				<div class="col-2">
					<img src="images/galaxy.png" alt="" class="w-25">
				</div>
				<div class="col-8">
					<h4 class="text-center">Создайте свой список дел</h4>
				</div>
			</div>			
		</div>
	</div>
	<!-- 1. insert -->
	<div class="container bg-light">
		<div class="col-12">
			<h3>Create Wish List:</h3>
			<form action="insert.php" method="POST" enctype="multipart/form-data">
				<div class="form-group">
					<textarea name="text" id="" cols="50" rows="4" class="form-control" placeholder="Введите дело"></textarea>
				</div>
				<div class="form-group">
					<input type="date" name="date" class="form-control">
				</div>
				<div class="form-group">
					<input type="file" name="file">
				</div>
				<button class="btn btn-warning">create</button>
			</form>	
			<hr>			
		</div>
		<div class="col-12">
		<!-- select -->
		<?php $query = mysqli_query($con, "SELECT * FROM example ORDER BY id DESC");
		$color = ' text-danger'; ?>
			<div class="row">
				<div class="col-2">
					<h4>Date</h4>
				</div>
				<div class="col-10">
					<h4>To Do</h4>
				</div>
			</div>
		<?php for($i = 0; $i < $query->num_rows; $i++) {
			$result = $query->fetch_assoc(); ?>
			<div class="row mb-2">
				<!-- date -->
				<div class="col-2">
					<h6><?php echo $result['date']; ?></h6>
				</div>
				<!-- 2. update -->
				<div class="col-7">
					<?php if ($result['status'] == 1) {
						echo '<p class="text text-success"><del>'. $result['holiday'] . '</del></p>';
					} else {
						echo '<p class="text text-danger">'. $result['holiday'] . '</del></p>';
					} ?>
					<form action="update.php" method="POST">
						<div class="d-flex">
							<?php echo '<input type="hidden" value="' . $result['holiday'] . '" name="input" class="input">';
							echo '<input type="hidden" value="' . $result['date'] . '" name="date" class="date">';
							echo '<input type="hidden" value="' . $result['id'] . '" name="id">'; ?>
							<button class="button btn btn-outline-secondary" style="display: none">update</button>
						</div>
					</form>						
				</div>
				<!-- 3. status -->
				<div class="col-1">
					<form action="status.php" method="POST">
						<?php echo '<input type="hidden" value="' . $result['id'] . '" name="id">'; ?>
						<button class="btn btn-outline-success">done</button>
					</form>						
				</div>
				<!-- 4. delete -->
				<div class="col-1">
					<form action="delete.php" method="POST">
						<?php echo '<input type="hidden" value="' . $result['id'] . '" name="id">'; ?>
						<button class="btn btn-outline-danger">delete</button>
					</form>
				</div>
				<!-- img -->
				<div class="col-1">
					<?php echo '<img src="' . $result['file'] . '" alt="" class="w-50">'; ?>
				</div>
			</div>
		<?php } ?>		
		</div>
	</div>
	<div class="container-fliud bg-info">
		<div class="container pt-1 pb-5">
			© All rights reserved
		</div>
	</div>
	<!--
	1. создание записи +
	2. удаление записи +
	3. статус (true, false) +
	4. картинка +
	5. вывод
	-->
	<script>
		/*  */
		let text = document.querySelectorAll('.text');
		let input = document.querySelectorAll('.input');
		let date = document.querySelectorAll('.date');
		let button = document.querySelectorAll('.button');

		for(let i=0; i<text.length; i++) {
			text[i].onclick = function() {
				input[i].type = 'text';
				date[i].type = 'date';
				text[i].style.display="none";
				button[i].style.display = 'block';
			}	
		}		
	</script>
</body>
</html>