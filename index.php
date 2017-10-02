<!DOCTYPE html>
<html>
<head>
<?php include 'head.php';?>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				 <?php if(isset($_GET["page"])) include 'nav.php';?>
    		</nav>
		</header> 
		<!-- Full Width Column -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Main content -->
      				<?php include 'body.php';?>
                <!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
    		<?php include 'footer.php';?>
  		</footer>
	</div>
	<!-- ./wrapper -->
<?php include 'js.php';?>
</body>
</html>
