<?php
	session_start();
	if(isset($_SESSION['username']))
	{	
		
		$user = $_SESSION['username'];
	}
	
	require "config/config.php";
	
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Search Book</title>
</head>
<body>
<?php include('header.php');
	if(isset($_SESSION['username']))
	{	
		?>
		<h2>HELLO <?php echo  strtoupper($user); ?></h2>
	<?php } ?>
	

	<form action="srcfun.php" method="GET" class="srch">
        <input type="text" name="query" />
        <input type="submit" value="Search" />
    </form>
	

<?php include('footer.php')?>	
</body>
</html>