<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="css/beranda.css">

	<title>Flash Delivery</title>
	
	<style>
		.carousel-item {
			height: 500px;
		}
	</style>
</head>
<body>
 	<nav class="navbar navbar-expand-md navbar-dark bg-danger">
        <div class="container-fluid">
            <a class="navbar-brand" href="beranda.jsp">Flash Delivery <i class="fas fa-bolt"></i></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                	<li class="nav-item">
                        <a class="nav-link" href="cekStatus.jsp">Cek Status Pengiriman</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="services.jsp">Services</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="aboutus.jsp">About Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

	<div class="jumbotron d-flex align-items-center justify-content-center">
		<h1 class="text-white display-2">Selamat Datang</h1>
	</div>

    <div class="bg-dark p-4">
		<h1 data-aos="zoom-in" class="text-white text-center mt-3">Alat Transportasi </h1>
		
		<h5 data-aos="zoom-in" class="lead text-white text-center mb-3">Kami menyediakan layanan pengantaran dengan transportasi berikut :</h5>

    	<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="card rounded border-0 shadow p-4" data-aos="fade-up">
						<div class="text-center">
							<i class="fas fa-motorcycle icon"> </i> 
							<h3>Motorcycle</h3>
						</div>
					</div>
				</div>

				<div class="col-md-6 my-3 my-md-0">
					<div class="card rounded border-0 shadow p-4" data-aos="fade-up">
						<div class="text-center">
							<i class="fas fa-shipping-fast icon"></i> 
							<h3>Truck</h3>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </div> 
	
    <div class="bg-white middle-3 p-4">
		<!-- <div class="garis" data-aos="zoom-in"></div> -->
		
    	<h1 class="text-center mb-3" data-aos="zoom-in">Status Pengiriman Barang</h1>
		
    	<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="card rounded border-0 shadow p-4" data-aos="fade-left">
						<div class="text-center">
							<i class="fas fa-box-open icon"></i>
							<h3>Sedang Dalam Proses</h3>
						</div>
						
						<p>Tahap 1 : Barang dalam proses packaging dan menunggu penjemputan oleh kendaraan</p>
					</div>
				</div>

				<div class="col-md-4 my-3 my-md-0">
					<div class="card rounded border-0 shadow p-4" data-aos="fade-left">
						<div class="text-center">
							<i class="fas fa-shipping-fast icon"></i> 
							<h3>Dalam Pengiriman</h3>
						</div>
						
						<p>Tahap 2 : Barang telah di terima oleh pengantar dan sedang dalam perjalanan</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card rounded border-0 shadow p-4" data-aos="fade-left">
						<div class="text-center">
							<i class="fas fa-people-carry icon"></i>
							<h3>Sudah Sampai</h3>
						</div>

    					<p>Tahap 3 : Barang sudah sampai dan telah di terima oleh penerima barang</p>
					</div>
				</div>
			</div>
		</div>	
	</div>
	
    <div class="kepala bg-danger pt-4">
		<div class="c bg-danger">
			<h1 data-aos="fade-right">Flash Delivery <i class="fas fa-bolt"></i></h1>
			<p data-aos="fade-right" >Kami akan menghadirkan flash delivery mobile untuk mempermudah mengecek status pengiriman barang</p>
			<br/>
			<h2 data-aos="zoom-in">In Development for Android </h2>
			<!-- <img src="playstore.png" data-aos="fade-right"  style="width: 300px; height: 100px;"> -->
			<!-- <img src="appstore.png" data-aos="fade-right"style="width: 270px; height: 70px;"> -->
		</div>

		<div class="mobile" data-aos="fade-left">
			<div class="top"></div>

			<a href="login.jsp">
				<div class="bottom"></div>
			</a>
			
			<div class="screen">
				<img src="images/ss.jpg"/>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
	<script type="text/javascript">
		$('.carousel').carousel({
			interval: 2000
		})
	</script>
	<script type="text/javascript">
		AOS.init({
			duration: 2000, 
			});
	</script>
</body>
</html>