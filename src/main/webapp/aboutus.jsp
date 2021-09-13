<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/about_style.css">
    
    <title>About Us</title>

    <style>
        /* Set the size of the div element that contains the map */
       #map {
         height: 400px;  /* The height is 400 pixels */
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

    <div class="jumbotron mb-0">
        <h1 class="text-white">About Us</h1>
    </div>

   
        <div class="container mt-3">
            <div class="row">
                <div class="col-lg-6 order-1 order-lg-1">
                    <p data-aos="fade-right">
                        Flash Delivery adalah perusahan expedisi pengantar barang pertama di indonesia yang melayani pengiriman barang dalam negeri maupun luar negeri,
                        Flash Delivery pertama kali didirikan tahun 1999 untuk membantu masyarakat mengirim barang untuk keluarganya atau temannya.</p> 
                </div>
                
                <div class="col-lg-6 order-2 order-lg-2">

                    <span data-aos="fade-left" class="fas fa-map-marker">   : Jl raya kemang dalam no 2 kecmatan asahan kota bekasi amerika serikat</span>
                    <br/>

                    <span data-aos="fade-left" class="fas fa-phone">    : 021 68686666</span>
                    <br/>

                    <span data-aos="fade-left" class="fas fa-envelope">     : Flashdelivery@Mail.com</span>
                    <br/>

                    <span data-aos="fade-left" class="fab fa-facebook-f">   : Flashdeliveryindo</span>
                    <br/>

                    <span data-aos="fade-left" class="fab fa-instagram">    : Flash_delivery</span>
                    <br/>

                    <span data-aos="fade-left" class="fab fa-twitter">      : flashdelivery</span> 
                    </div>  
               
                <div class="col-12 order-3 mt-3">
                    <div id="map"></div>
                </div>
            </div>
        </div>
 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

        <script src="js/locationMap.js"></script>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAQqh5CXpwpzWYI5WdRA3Ouxp0VJwmbyuE&callback=initMap"></script>

        <script type="text/javascript">
            AOS.init({
                duration: 2000, 
                });
        </script>
</body>
</html>