<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['bpmsaid']==0)) {
  header('location:logout.php');
  } 
     ?>
<!DOCTYPE HTML>
<html>
<head>
<title> Barber | Admin Dashboard</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--Calender-->
<link rel="stylesheet" href="css/clndr.css" type="text/css" />
<script src="js/underscore-min.js" type="text/javascript"></script>
<script src= "js/moment-2.2.1.js" type="text/javascript"></script>
<script src="js/clndr.js" type="text/javascript"></script>
<script src="js/site.js" type="text/javascript"></script>
<!--End Calender-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
<div class="main-content">
		
		 <?php include_once('includes/sidebar.php');?>
		
	<?php include_once('includes/header.php');?>
		<!-- main content start-->
		<div id="page-wrapper" class="row calender widget-shadow">
			<div class="main-page">
			<?php $query1=mysqli_query($con,"Select * from tblbook where Status='Accepted'");
                         $selectedbooks=mysqli_num_rows($query1);
						 $queryslots=mysqli_query($con,"Select total_slots from tblslots");
						 $totalslots=mysqli_fetch_array($queryslots);
						 $availableslots=$totalslots['total_slots']-$selectedbooks;
						 $_SESSION['availableslots']=$availableslots;

?>
			
				<div class="row calender widget-shadow">
					<!-- <div class="row-one"> -->
					<div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="background: darkorange;">
                            <div class="row">
                                <div class="col-xs-12">
                                    <i class="fa fa-users fa-2x"></i>
                                </div>
                                <div class="col-xs-12 text-right">
                                     
                                <!-- in order to count total donor's record -->
                                        <h1><?php echo $availableslots;?></h1> 

                                    <!-- <div class="huge">26</div> -->
                                    <div>Available Slots</div>
                                </div>
                            </div>
                        </div>
                    </div>
					
                </div>
				<div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="background: darkmagenta;">
                            <div class="row">
                                <div class="col-xs-12">
                                    <i class="fa fa-calendar fa-2x"></i>
                                </div>
                                <div class="col-xs-12 text-right">
									<?php $query2=mysqli_query($con,"Select * from tblbook");
									$totalappointment=mysqli_num_rows($query2);
									?>
                                <!-- in order to count total donor's record -->
                                        <h1><?php echo $totalappointment;?></h1> 

                                    <!-- <div class="huge">26</div> -->
                                    <div >Total Appointments</div>
                                </div>
                            </div>
                        </div>
                    </div>
					</div>
					
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-12">
										<i class="fa fa-check fa-2x"></i>
									</div>
									<div class="col-xs-12 text-right">
										<?php $query3=mysqli_query($con,"Select * from tblbook where Status='Accepted'");
										$totalaccapt=mysqli_num_rows($query3);
										?>
									<!-- in order to count total donor's record -->
											<h1><?php echo $totalaccapt;?></h1> 
	
										<!-- <div class="huge">26</div> -->
										<div >Accepted Appointments</div>
									</div>
								</div>
							</div>
						</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="panel panel-primary">
								<div class="panel-heading" style="background: slateblue">
									<div class="row">
										<div class="col-xs-12">
											<i class="fa fa-ban fa-2x"></i>
										</div>
										<div class="col-xs-12 text-right">
											<?php $query4=mysqli_query($con,"Select * from tblbook where Status='Rejected'");
											$totalrejapt=mysqli_num_rows($query4);
											?>
										<!-- in order to count total donor's record -->
												<h1><?php echo $totalrejapt;?></h1> 
		
											<!-- <div class="huge">26</div> -->
											<div >Rejected Appointments</div>
										</div>
									</div>
								</div>
							</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="panel panel-primary">
									<div class="panel-heading" style="background: gold">
										<div class="row">
											<div class="col-xs-12">
												<i class="fa fa-list fa-2x"></i>
											</div>
											<div class="col-xs-12 text-right">
												<?php $query5=mysqli_query($con,"Select * from  tblservices");
												$totalser=mysqli_num_rows($query5);
												?>
											<!-- in order to count total donor's record -->
													<h1><?php echo $totalser;?></h1> 
			
												<!-- <div class="huge">26</div> -->
												<div >Total Services</div>
											</div>
										</div>
									</div>
								</div>
								</div>
								<div class="col-lg-3 col-md-6">
									<div class="panel panel-primary">
										<div class="panel-heading" style="background: yellowgreen">
											<div class="row">
												<div class="col-xs-12">
													<i class="fa fa-list fa-2x"></i>
												</div>
												<div class="col-xs-12 text-right">
													<?php
													//todays sale
													 $query6=mysqli_query($con,"select tblinvoice.ServiceId as ServiceId, tblservices.Cost
													 from tblinvoice 
													  join tblservices  on tblservices.ID=tblinvoice.ServiceId where date(PostingDate)=CURDATE();");
													while($row=mysqli_fetch_array($query6))
													{
													$todays_sale=$row['Cost'];
													$todysale+=$todays_sale;
													
													}
													 ?> 
														<h1> <?php 
															if($todysale==""):
																						echo "0";
															else:
																echo $todysale;
															endif;
																					?></h1> 
				
													<!-- <div class="huge">26</div> -->
													<div >Today Sales</div>
												</div>
											</div>
										</div>
									</div>
									</div>
									<div class="col-lg-3 col-md-6">
										<div class="panel panel-primary">
											<div class="panel-heading" style="background: orchid">
												<div class="row">
													<div class="col-xs-12">
														<i class="fa fa-list fa-2x"></i>
													</div>
													<div class="col-xs-12 text-right">
														<?php
														//Yesterday's sale
														 $query7=mysqli_query($con,"select tblinvoice.ServiceId as ServiceId, tblservices.Cost
														 from tblinvoice 
														  join tblservices  on tblservices.ID=tblinvoice.ServiceId where date(PostingDate)=CURDATE()-1;");
														while($row7=mysqli_fetch_array($query7))
														{
														$yesterdays_sale=$row7['Cost'];
														$yesterdaysale+=$yesterdays_sale;
														
														}
														 ?>
															<h1> <?php 
																if($yesterdaysale==""):
																							echo "0";
																else:
																	echo $yesterdaysale;
																endif;
																						?></h1> 
					
														<!-- <div class="huge">26</div> -->
														<div >Yesterday Sales</div>
													</div>
												</div>
											</div>
										</div>
										</div>
										<div class="col-lg-3 col-md-6">
											<div class="panel panel-primary">
												<div class="panel-heading" style="background: indigo">
													<div class="row">
														<div class="col-xs-12">
															<i class="fa fa-list fa-2x"></i>
														</div>
														<div class="col-xs-12 text-right">
															<?php
															
															 $query9=mysqli_query($con,"select tblinvoice.ServiceId as ServiceId, tblservices.Cost
															 from tblinvoice 
															  join tblservices  on tblservices.ID=tblinvoice.ServiceId");
															while($row9=mysqli_fetch_array($query9))
															{
															$total_sale=$row9['Cost'];
															$totalsale+=$total_sale;
															
															}
															 ?>
																<h1><?php

																	if($totalsale==""):
																						echo "0";
															else:
																echo $totalsale;
															endif;
																					?></h1> 
						
															<!-- <div class="huge">26</div> -->
															<div >Total Sales</div>
														</div>
													</div>
												</div>
											</div>
											</div>
				
					
			
				</div>
						
					</div>

	
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!--footer-->
		<?php include_once('includes/footer.php');?>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
</body>
</html>