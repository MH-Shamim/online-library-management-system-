<?php 

	session_start();
	if(!isset($_SESSION['adminUsername']))
	{	
		//if a user logged in then this page will redirect to his profile page
		header("Location:adminlogin.php");
	}
	
	require "../config/config.php";
	
	if(!isset($_GET['id']) || $_GET['id']==NULL){
		header("Location:controluser.php");
	}
	else{
		 $id = $_GET['id'];
	}

	$sql = "SELECT borrowerBookId FROM tbl_borrower WHERE borrowerId = '".$id."'";
	$result = mysqli_query($conn,$sql);
	$userData = mysqli_fetch_array($result,MYSQLI_BOTH);

	$bookid = $userData['borrowerBookId'];

	$sql = "SELECT bookQuantity FROM tbl_book WHERE bookId = '".$bookid."'";
	$result = mysqli_query($conn,$sql);
	$userData = mysqli_fetch_array($result,MYSQLI_BOTH);

	echo $quan = $userData['bookQuantity']+1;
	

	$sql = "UPDATE tbl_book SET bookQuantity='".$quan."' WHERE bookId='".$bookid."'";
	$conn->query($sql);

	$sql = "DELETE FROM tbl_borrower WHERE borrowerId='".$id."'";
	

	if ($conn->query($sql) === TRUE) {
		
		header("location:controluser.php");	
	} else {
		echo $var  = "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();

?>