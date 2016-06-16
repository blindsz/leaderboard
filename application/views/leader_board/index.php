<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Michael Phelps Swim Spa Challenge Leaderboard</title>
		<?php include(APPPATH . "views/_shared/css.php"); ?>
	</head>
	<body>
		<!-- Navigation -->
	    <?php include(APPPATH . "views/_shared/header.php"); ?>
	    <div class="container">
	        <div class="row">
	            <div class="box">
	                <div class="col-lg-12 text-center">
	                    <div id="carousel-example-generic" class="carousel slide leader_board_carousel">
	                        <!-- Wrapper for slides -->
	                        <div class="carousel-inner">
	                            <div class="item active">
	                                <div class="age">
	                                    <p>Ages 9-12</p>
	                                </div>
	                                <div class="table-responsive">
	                                    <div class="table-responsive">
	                                        <table class="table table-bordered">
	                                            <thead>
	                                                <tr>
	                                                    <th>Place</th>
	                                                    <th>Name</th>
	                                                    <th>Time</th>
	                                                </tr>
	                                            </thead>
	                                            <tbody id="age_nine_to_twelve_table">
	                                                <!-- content -->
	                                            </tbody>
	                                        </table>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="item">
	                                <div class="age">
	                                    <p>Ages 13-17</p>
	                                </div>
	                                <div class="table-responsive">
	                                    <div class="table-responsive">
	                                        <table class="table table-bordered">
	                                            <thead>
	                                                <tr>
	                                                    <th>Place</th>
	                                                    <th>Name</th>
	                                                    <th>Time</th>
	                                                </tr>
	                                            </thead>
	                                            <tbody id="age_thirteen_to_seventeen_table">
	                                                <!-- content -->
	                                            </tbody>
	                                        </table>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="item">
	                                <div class="age">
	                                    <p>Ages 18+</p>
	                                </div>
	                                <div class="table-responsive">
	                                    <div class="table-responsive">
	                                        <table class="table table-bordered">
	                                            <thead>
	                                                <tr>
	                                                    <th>Place</th>
	                                                    <th>Name</th>
	                                                    <th>Time</th>
	                                                </tr>
	                                            </thead>
	                                            <tbody id="age_eighteen_up_table">
	                                                <!-- content -->
	                                            </tbody>
	                                        </table>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                        </div>

	                    </div>

	                </div>
	            </div>
	        </div>
	    </div>
		<?php include(APPPATH . "views/_shared/js.php"); ?>
	</body>
</html>