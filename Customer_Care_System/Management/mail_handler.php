
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
    $to=$_POST['To'];
	$from =$_POST['From'];
    $first_name = $_POST['first_name'];
	$last_Name=$_POST['fast_Name'];
	$subject=$_POST['subject'];
    $subject2=$_POST['subject2'];
	$message =$_POST['message'];
    $message2 =$_POST['message2'];
    $headers=$_POST['headers'];
	$headers2=$_POST['headers2'];
    $User=$_POST['user'];

    mail($to,$subject,$message,$headers);
    mail($from,$subject2,$message2,$headers2); // sends a copy of the message to the sender
    echo "Mail Sent. Thank you " . $first_name . ", we will contact you shortly.";

$sql=mysqli_query($con,"insert into email(To,From,first_name,fast_Name,subject,subject2,message,message2,headers,headers2) 
values('$to','$from','$first_name','$last_Name','$subject','$subject2','$message', $message2','$headers','$headers2',' $User')");

}

?>


    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Management| Send mail</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
        <script language="javascript" type="text/javascript">

</script>
</head>
<body>

<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
			
			<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Send Email</h3>
							</div>
							<div class="module-body">

									<?php if(isset($_POST['submit']))
{?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Mail Sent to Customer!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
									</div>
<?php } ?>

									<br /> 

<form class="form-horizontal row-fluid" name="mail_handler" method="post" >

<div class="control-group">
<label class="control-label" for="basicinput">To</label>
<div class="controls">
<input type="text" placeholder="email"  name="to" class="span8 tip" required >
</div>


<div class="control-group">
<label class="control-label" for="basicinput">From</label>
<div class="controls">
<input type="text" placeholder="email"  name="from" class="span8 tip" required>
</div>



<div class="control-group">
<label class="control-label" for="basicinput">Subject</label>
<div class="controls">
<input type="text" placeholder="subject"  name="subjrct" class="span8 tip" required>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Message</label>
<div class="controls">
<textarea class="span8" name="message" rows="5"></textarea>
</div>

<div class="control-group">
<div class="controls">
    
<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
</div>
</div>
</form>
</div>
</div>
	
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