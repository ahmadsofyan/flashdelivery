<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Beranda Admin</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body onload="tampilData()">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="berandaAdmin.jsp">Flash Delivery <i class="fas fa-bolt"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="inputData.jsp">Input Data</a>
            </li>
          </ul>

          <ul class="navbar-nav">
            <li id="logoutContainer" class="nav-item">
                <button id="logoutBtn" class="nav-link text-white btn btn-danger">Logout</button>
            </li>
          </ul>
        </div>
    </nav>


    <div class="container-fluid mt-4">
      <h1>Welcome Back, Admin</h1>

      <div class="table-responsive">
        <table id="tabel-data-pengiriman" class="table table-striped table-bordered table-hover mt-3">
          <thead class="thead-dark">
            <tr>
              <th scope="">Kode Pengiriman</th>
              <th scope="col">Nama Pengirim</th>
              <th scope="col">Kota Pengirim</th>
              <th scope="col">Alamat Pengirim</th>
              <th scope="col">No Hp Pengirim</th>
  
              <th scope="col">Nama Penerima</th>
              <th scope="col">Kota Penerima</th>
              <th scope="col">Alamat Penerima</th>
              <th scope="col">No Hp Penerima</th>
  
              <th scope="col">Service Pengiriman</th>
              <th scope="col">Status Pengiriman</th>
  
              <th scope="col">Action</th>
              
            </tr>
          </thead>
  
          <tbody>
  
          </tbody>
        </table>
      </div>
    </div>

    <!-- Modal Action -->
    <div class="modal fade" id="modalAction" tabindex="-1" role="dialog" aria-labelledby="ModalUpdateLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="ModalUpdateLabel">Ubah / Delete (<span id="kodePengiriman"></span>)</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
              </div>

              <div class="modal-body">
                  <h6>Status Pengiriman: </h6>

                  <select id="statusPengiriman">
                    <option>Sedang Dalam Proses</option>
                    <option>Dalam Perjalanan</option>
                    <option>Sudah Sampai</option>
                  </select>
                  
              </div>

              <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="updateData()">Update</button>
                <button type="button" class="btn btn-danger" onclick="deleteData()">Delete</button>
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
    <script src="https://www.gstatic.com/firebasejs/6.2.0/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/6.2.0/firebase-database.js"></script>

    <script src="js/firebaseConfig.js"></script>
    <script src="js/sessionFirebase.js"></script>
    <script src="js/functions.js"></script>
</body>
</html>