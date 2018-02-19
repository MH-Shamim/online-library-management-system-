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
	<title>Data View</title>
</head>
<body>
<?php include('header.php');
	if(isset($_SESSION['username']))
	{	
		?>
		<h2>HELLO <?php echo  strtoupper($user); ?></h2>
	<?php } ?>

	
	<?php
		if($_SERVER['REQUEST_METHOD']=='GET'){
			$query = $_GET['query']; 
			 
			$min_length = 3;
			
			$num = strlen($query);
			 
			if($num >= $min_length){
				 
				$query = strtolower(htmlspecialchars($query)); 
				
				 
				$i=0;
				$sql = "SELECT * FROM tbl_book";
				$result = mysqli_query($conn,$sql);
				
	?>
		<table class="tbl2">
			<tr>
				<th width="10%">Serial No.</th>
				<th width="30%">Book Name</th>
				<th width="20%">Author Name</th>
				<th width="15%">Status</th>
				<th width="10%">Picture</th>
				<th width="15%">Action</th>
			</tr>

			<?php
				$k = 0;
				while($row=mysqli_fetch_array($result)){
					$alia = strtolower(substr($row['bookName'],0,$num));
					
					if($alia==$query){
						$i++;
						$k = 1;
			?>
			
	<tr>
		<td><?php echo $i."."; ?></td>
		<td><?php echo $row["bookName"]; ?></td>
		<td><?php echo $row["bookAuthor"]; ?></td>
		<td><?php if($row["bookQuantity"]>0){ ?>Available
		<?php }else{ ?>Not Available<?php } ?></td>
		<td><img height="60px" width="40px" src="admin/<?php echo $row["bookPicture"]; ?>" alt="<?php echo $row["bookName"]; ?>" /></td>
		<td><?php if($row["bookQuantity"]>0 && $num<5){ ?><a href="getnow.php?id=<?php echo $row["bookId"];?>&qun=<?php echo $row["bookQuantity"];?>">Get Now</a>
		<?php }else{ ?><a style="pointer-events: none;cursor: default" href="getnow.php?id=<?php echo $row["bookId"] ;?>&qun=<?php echo $row["bookQuantity"];?>">Get Now</a><?php } ?></td>
		</tr>
			
			<?php
						
					} 
			
			?>
			
			<?php
					
				}
				if($k==0){ ?>

				<p style="text-align:center;color:red;display:block;font-weight:bold">No Book Found</p>
					<?php
				}
			}else{ ?>
			
				<p style="text-align:center;color:red;display:block;font-weight:bold"><?php echo "Minimum length is ".$min_length;?></p>
				
				
			<?php
			}
			
		}
		
	?>
	
	</table>

<?php include('footer.php')?>	
</body>
</html>

