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

    <link rel="stylesheet" href="css/checking.css">

    <title>Cek Status Pengiriman</title>
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

  <div class="jumbotron">
    <h1 class="text-white">Cek Status Pengiriman</h1>
  </div>

  <div class="container-fluid mx-3">
    <form>
      <div class="form-group">
        <h2 class="mb-3">Masukkan Kode Pengiriman</h2>
        
      	<input type="text" class="form-control w-50" id="searchInput"/>
      	
      	<button class="btn btn-danger mt-3" type="button" id="btnCekStatus" data-toggle="modal" data-target="#modalStatus" onclick="cekStatus()">Cek Status</button>

      </div>
    </form>
  </div>

  <div class="modal fade" id="modalStatus" tabindex="-1" role="dialog" aria-labelledby="ModalUpdateLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalUpdateLabel">Kode Pengiriman : <span id="kodePengiriman"></span></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div id="modalBody" class="modal-body">
                
            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
  <!-- The core Firebase JS SDK is always required and must be listed first -->
  <script src="https://www.gstatic.com/firebasejs/6.2.0/firebase-app.js"></script>

  <!-- TODO: Add SDKs for Firebase products that you want to use
      https://firebase.google.com/docs/web/setup#available-libraries -->
  <script src="https://www.gstatic.com/firebasejs/6.2.0/firebase-database.js"></script>

  <script src="js/firebaseConfig.js"></script>
  <script src="js/cekStatusPengiriman.js"></script>
</body>
</html>