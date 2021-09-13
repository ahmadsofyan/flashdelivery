// Menampilkan data pengiriman
function tampilData() {

    // Buat referensi database
    var database = firebase.database();
    var dbRef = database.ref("data_pengiriman");

    // Dapatkan referensi tabel
    var table = document.getElementById("tabel-data-pengiriman").getElementsByTagName("tbody")[0];

    // Membuang semua isi tabel
    $("#tabel-data-pengiriman").find("tr:gt(0)").remove();

    // Memuat data
    dbRef.on("child_added", function(snapshot) {

        var data = snapshot.val();

        var row = table.insertRow(table.rows.length);

        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);
        var cell6 = row.insertCell(5);
        var cell7 = row.insertCell(6);
        var cell8 = row.insertCell(7);
        var cell9 = row.insertCell(8);
        var cell10 = row.insertCell(9);
        var cell11 = row.insertCell(10);
        var cell12 = row.insertCell(11);

        cell1.innerHTML = data.kode_pengiriman;
        cell2.innerHTML = data.nama_pengirim;
        cell3.innerHTML = data.kota_pengirim;
        cell4.innerHTML = data.alamat_pengirim;
        cell5.innerHTML = data.no_hp_pengirim;

        cell6.innerHTML = data.nama_penerima;
        cell7.innerHTML = data.kota_penerima;
        cell8.innerHTML = data.alamat_penerima;
        cell9.innerHTML = data.no_hp_penerima;
        cell10.innerHTML = data.service_pengiriman;
        cell11.innerHTML = data.status_pengiriman;
        cell12.innerHTML = '<button class="btn btn-primary btn-sm" type="button" id="update_data" onclick="actionModal_Tampil(' + "'" + data.kode_pengiriman + "'" + ')" data-toggle="modal" data-target="#modalAction">Action</button>';
    });
}

// Menampilkan data yang akan di update / delete pada modal action
function actionModal_Tampil(id) {
    document.getElementById("kodePengiriman").textContent = id;

    var database = firebase.database();
    var dbRef = database.ref("data_pengiriman/" + id);

    dbRef.on("value", function(snapshot) {

        var data = snapshot.val();

        $("#statusPengiriman").val(data.status_pengiriman);
    });
}

// Melakukan proses update data (status pengiriman)
function updateData() {

    var kodePengiriman = document.getElementById("kodePengiriman").textContent;

    var status = document.getElementById("statusPengiriman").value;

    var database = firebase.database();
    var dbRef = database.ref("data_pengiriman/" + kodePengiriman);

    dbRef.update({
        status_pengiriman : status
    });

    $('#modalAction').modal('hide');
    tampilData(); 
}

// Melakukan proses delete data
function deleteData() {

    var kodePengiriman = document.getElementById("kodePengiriman").textContent;

    var database = firebase.database();
    var dbRef = database.ref("data_pengiriman/" + kodePengiriman);

    dbRef.remove();

    $('#modalAction').modal('hide');
    tampilData(); 
}