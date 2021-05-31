<?php 
require_once("include/config.php");
if(!empty($_POST["Employee_Id"])) {
	$Employee_Id= $_POST["Employee_Id"];
	
		$result =mysqli_query($con,"SELECT Employee_Id FROM staff_user WHERE Employee_Id= '$Employee_Id' ");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Employee_Id already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Employee_Id available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
