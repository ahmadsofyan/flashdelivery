<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <title>Input Data Pengiriman</title>
</head>
<body>
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

    <div class="container my-4">
        <div class="jumbotron">
            <h1>Masukkan Data Pengiriman</h1>
        </div>

        <form>
            <div class="row">
                <div class="col-md-6">
                    <h2 class="text-danger">Pengirim</h2>
                        <div class="form-group">
                            <label for="namaPengirim">Nama Pengirim</label>
                            <input type="text" class="form-control" id="namaPengirim">
                        </div>
                        <div class="form-group">
                            <label for="kotaPengirim">Kota Pengirim</label>
                            <select id="kotaPengirim" class="form-control">
                                <option>-- Pilih Kota --</option>
                                <option>Jakarta</option>
                                <option>Bogor</option>
                                <option>Depok</option>
                                <option>Tangerang</option>
                                <option>Bekasi</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="alamatPengirim">Alamat Pengirim</label>
                            <input type="text" class="form-control" id="alamatPengirim">
                        </div>
                        <div class="form-group">
                            <label for="nomorPengirim">Nomor Handphone Pengirim</label>
                            <input type="text" class="form-control" id="nomorPengirim">
                        </div>
                </div>

                <div class="col-md-6">
                    <h2 class="text-danger">Penerima</h2>
                        <div class="form-group">
                            <label for="namaPenerima">Nama Penerima</label>
                            <input type="text" class="form-control" id="namaPenerima">
                        </div>
                        <div class="form-group">
                            <label for="kotaPenerima">Kota Penerima</label>
                            <select id="kotaPenerima" class="form-control">
                                <option>-- Pilih Kota --</option>
                                <option>Jakarta</option>
                                <option>Bogor</option>
                                <option>Depok</option>
                                <option>Tangerang</option>
                                <option>Bekasi</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="alamatPenerima">Alamat Penerima</label>
                            <input type="text" class="form-control" id="alamatPenerima">
                        </div>
                        <div class="form-group">
                            <label for="nomorPenerima">Nomor Handphone Penerima</label>
                            <input type="text" class="form-control" id="nomorPenerima">
                        </div>
                </div>

                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="text-danger">Detail Barang</h2>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="servicePengiriman">Service</label>
                                        <select id="servicePengiriman" class="form-control">
                                            <option>-- Pilih Service --</option>
                                            <option>Reguler</option>
                                            <option>Express</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="beratBarang">Berat (kg)</label>
                                        <input type="number" class="form-control" id="beratBarang">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <h2 class="mb-4 text-danger">Harga</h2>
                                
                                <h1 id="hargaTotal" class="mt-4"></h1>
                                <input type="text" class="d-none form-control" id="hargaPengiriman">
                            </div>
                        </div>
                    </div>

                    <div class="text-center">
                        <button id="cekBtn" type="button" class="btn btn-primary mr-2">Cek Harga</button>
                        <button id="submitBtn" type="button" class="btn btn-danger">Submit</button>
                    </div>
                </div>
            </div>
        </form>
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
    <script src="js/inputData.js"></script>
</body>
</html>