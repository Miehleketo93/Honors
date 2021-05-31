
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
date_default_timezone_set('Africa/Johannesburg');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );


if(isset($_POST['submit']))
{
	$Employee_Id=$_POST['Employee_Id'];
	$First_name=$_POST['First_name'];
	$Last_Name=$_POST['Last_Name'];
	$Password=$_POST['Password'];
	$Phone_Number=$_POST['Phone_Number'];
	$Staff_Email=$_POST['Staff_Email'];
	$Staff_indicator=$_POST['Staff_indicator'];

	$sql_u = "SELECT * FROM staff_user WHERE Employee_Id='$Employee_Id'";
	$sql_e = "SELECT * FROM staff_user WHERE Staff_Email='$Staff_Email'";
	$res_u = mysqli_query($con, $sql_u);
	$res_e = mysqli_query($con, $sql_e);


	if (mysqli_num_rows($res_u) > 0) {
      $_SESSION['errmsg']="Sorry... Employee_Id already taken";
  	}else if(mysqli_num_rows($res_e) > 0){
  	  $_SESSION['errmsg']="Sorry... Staff_Email already taken";
  	}else{

$sql=mysqli_query($con,"insert into staff_user(Employee_Id,First_name,Last_Name,Password,Phone_Number,Staff_Email,Staff_indicator) 
values('$Employee_Id','$First_name','$Last_Name','$Password','$Phone_Number','$Staff_Email','$Staff_indicator')");

$results = mysqli_query($con, $sql);
           echo 'Staff User Created!!';
           exit();
  	}
  }
//$_SESSION['msg']="Staff User Created !!";


//if(isset($_GET['del']))
//		  {
//		          mysqli_query($con,"delete from staff_user where Employee_Id = '".$_GET['Employee_Id']."'");
//                  $_SESSION['delmsg']="Staff User deleted !!";
//		  }
//		}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Category</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>



<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'Employee_Id='+$("#Employee_Id").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
  </head>



<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Staff User</h3>
							</div>
							<div class="module-body">

									<?php if(isset($_POST['submit']))
{?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Staff User Created!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
									</div>
<?php } ?>


									<?php if(isset($_GET['del']))
{?>
									<div class="alert alert-error">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Oh snap!</strong> 	<?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
									</div>
<?php } ?>

									<br />

			<form class="form-horizontal row-fluid" name="Employee_Id" method="post" >
									
<div class="control-group">
<label class="control-label" for="basicinput">Employee_Id</label>
<div class="controls">
<input type="text" placeholder="Enter Employee_Id"  name="Employee_Id" onBlur="userAvailability()" class="span8 tip" required>
<span id="user-availability-status1" style="font-size:12px;"></span>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">First_name</label>
<div class="controls">
<input type="text" placeholder="Enter First_name"  name="First_name" class="span8 tip" required>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Last_Name</label>
<div class="controls">
<input type="text" placeholder="Enter Last_Name"  name="Last_Name" class="span8 tip" required>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Password</label>
<div class="controls">
<input type="text" placeholder="Enter Password"  name="Password" class="span8 tip" required>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Phone_Number</label>
<div class="controls">
<input type="text" placeholder="Enter Phone_Number"  name="Phone_Number" class="span8 tip" required>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Staff_Email</label>
<div class="controls">
<input type="text" placeholder="Enter Staff_Email"  name="Staff_Email" class="span8 tip" required>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Staff_indicator</label>
<div class="controls">
<select name="Staff_indicator" class="span8 tip" required>
<option value="">Select Staff_indicator</option> 
<?php $query=mysqli_query($con,"SELECT * FROM Staff_indicator");
while($row=mysqli_fetch_array($query))
{?>

<option value="<?php echo $row['Staff_indicator'];?>"><?php echo $row['Description'];?></option>
<?php } ?>
</select>
</div>
</div>

	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn">Add</button>
											</div>
										</div>
									</form>
							</div>
						</div>


<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>
<?php } ?>