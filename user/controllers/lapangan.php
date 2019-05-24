<?php
require_once '../../conn.php';

$lapangans = mysqli_query($conn, "SELECT * FROM lapangan");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sport Station - Event Page</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,300|Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
</head>

<body>
    <!--header-->
    <header class="main-header" id="header">
        <div class="bg-color">
            <!--nav-->
            <nav class="nav navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="col-md-12">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mynavbar" aria-expanded="false" aria-controls="navbar">
                                <span class="fa fa-bars"></span>
                            </button>
                            <a href="index.html" class="navbar-brand">Sport Station</a>
                        </div>
                        <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                            <ul class="nav navbar-nav">
                                <li><a href="#header">Home</a></li>
                                <li><a href="event.php">Event</a></li>
                                <li class="active"><a href="lapangan.php">Lapangan</a></li>
                                <li><a href="#contact">Edukasi</a></li>
                                <li><a href="#contact">Program Diet</a></li>
                                <li><a href="register.php">Sign Up</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <!--/ nav-->
            <div class="container text-center">
                <div class="wrapper wow fadeInUp delay-05s">
                    <h2 class="top-title">Sports & Daily Life</h2>
                    <h3 class="title">Sport Station</h3>
                    <h4 class="sub-title">Healthy Start From Ourselves</h4>
                    <a href="login.php" class="btn btn-submit">Login</a>
                </div>
            </div>
        </div>
    </header>
    <!--/ header-->
    <!---->

    <section id="cta-1">
        <div class="container">
            <h2>Lapangan</h2>
            <br><br>
            <div class="row">
                <?php foreach ($lapangans as $key) : ?>
                    <div class="col-md-3">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $key['nama_lapangan'] ?></h5>
                                <h6 class="card-subtitle mb-2 text-muted"><?php echo $key['lokasi'] ?></h6>
                                <a href="<?= $key['link'] ?>" class="card-link" target="_blank">Link Lokasi</a>
                            </div>
                            <br><br>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>


    <!---->
    <!---->
    <footer class="" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 footer-copyright">
                    © Bethany Theme - All rights reserved
                    <div class="credits">
                        <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Bethany
            -->
                        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                    </div>
                </div>
                <div class="col-sm-5 footer-social">
                    <div class="pull-right hidden-xs hidden-sm">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!---->
    <!--contact ends-->
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/jquery.easing.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/wow.js"></script>
    <script src="../assets/js/custom.js"></script>
    <script src="../assets/contactform/contactform.js"></script>

</body>

</html>