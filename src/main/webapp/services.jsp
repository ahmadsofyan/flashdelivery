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

    <link rel="stylesheet" href="css/services_style.css">

    <title>Services</title>
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
        <h1 class="text-white">Services</h1>
    </div>

    <div class="box mt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <div class="card" data-aos="fade-right">
                        <img class="card-img-top" src="images/bgnew.png" alt="">
                        <div class="card-body">
                            <h5 class="card-title">Reguler</h5>
                            <p class="card-text">Tarif : 3000 / km</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="card" data-aos="fade-left">
                        <img class="card-img-top" src="images/bgnew.png" alt="">
                        <div class="card-body">
                            <h5 class="card-title">Express</h5>
                            <p class="card-text">Tarif : 6000 / km</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script type="text/javascript">
    AOS.init({
        duration: 2000, 
        });
    </script>
</body>
</html>