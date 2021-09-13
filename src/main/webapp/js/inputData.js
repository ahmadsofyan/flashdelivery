// Element Pengirim
var namaPengirim = document.getElementById("namaPengirim");
var kotaPengirim = document.getElementById("kotaPengirim");
var alamatPengirim = document.getElementById("alamatPengirim");
var nomorPengirim = document.getElementById("nomorPengirim")

// Element Penerima
var namaPenerima = document.getElementById("namaPenerima");
var kotaPenerima = document.getElementById("kotaPenerima");
var alamatPenerima = document.getElementById("alamatPenerima");
var nomorPenerima = document.getElementById("nomorPenerima");

// Element Barang dan Harga
var servicePengiriman = document.getElementById("servicePengiriman");
var beratBarang = document.getElementById("beratBarang");
var hargaTotal = document.getElementById("hargaTotal");

// Element Button
var cekHargaBtn = document.getElementById("cekBtn");
var submitBtn = document.getElementById("submitBtn");

var harga = document.getElementById("hargaPengiriman");

var hargaPengiriman;
var hargaService;
var jarak;

cekHargaBtn.addEventListener("click", function() {

    if(namaPengirim.value == "" || 
        alamatPengirim.value == "" || nomorPengirim.value == "" || 
        namaPenerima.value == "" || 
        alamatPenerima.value == "" || nomorPenerima.value == "" ||
        beratBarang.value == "") {

            alert("Data tidak boleh kosong");
    }

    else {

        if(kotaPengirim.value == kotaPenerima.value) {

            alert("Kota tidak boleh sama !");
        }

        else {

            // Jika kota pengirim adalah 'Jakarta'
            if(kotaPengirim.value == "Jakarta" && kotaPenerima.value == "Bogor") {
                jarak = 56;
            } else if(kotaPengirim.value == "Jakarta" && kotaPenerima.value == "Depok") {
                jarak = 29;
            } else if(kotaPengirim.value == "Jakarta" && kotaPenerima.value == "Tangerang") {
                jarak = 33;
            } else if(kotaPengirim.value == "Jakarta" && kotaPenerima.value == "Bekasi") {
                jarak = 19;
            } 

            // Jika kota pengirim adalah 'Bogor'
            if(kotaPengirim.value == "Bogor" && kotaPenerima.value == "Jakarta") {
                jarak = 56;
            } else if(kotaPengirim.value == "Bogor" && kotaPenerima.value == "Depok") {
                jarak = 44;
            } else if(kotaPengirim.value == "Bogor" && kotaPenerima.value == "Tangerang") {
                jarak = 77;
            } else if(kotaPengirim.value == "Bogor" && kotaPenerima.value == "Bekasi") {
                jarak = 57;
            } 

            // Jika kota pengirim adalah 'Depok'
            if(kotaPengirim.value == "Depok" && kotaPenerima.value == "Jakarta") {
                jarak = 29;
            } else if(kotaPengirim.value == "Depok" && kotaPenerima.value == "Bogor") {
                jarak = 26;
            } else if(kotaPengirim.value == "Depok" && kotaPenerima.value == "Tangerang") {
                jarak = 45;
            } else if(kotaPengirim.value == "Depok" && kotaPenerima.value == "Bekasi") {
                jarak = 42;
            } 

            // Jika kota pengirim adalah 'Tangerang'
            if(kotaPengirim.value == "Tangerang" && kotaPenerima.value == "Jakarta") {
                jarak = 33;
            } else if(kotaPengirim.value == "Tangerang" && kotaPenerima.value == "Bogor") {
                jarak = 83;
            } else if(kotaPengirim.value == "Tangerang" && kotaPenerima.value == "Depok") {
                jarak = 46;
            } else if(kotaPengirim.value == "Tangerang" && kotaPenerima.value == "Bekasi") {
                jarak = 56;
            } 

            // Jika kota pengirim adalah 'Bekasi'
            if(kotaPengirim.value == "Bekasi" && kotaPenerima.value == "Jakarta") {
                jarak = 19;
            } else if(kotaPengirim.value == "Bekasi" && kotaPenerima.value == "Bogor") {
                jarak = 57;
            } else if(kotaPengirim.value == "Bekasi" && kotaPenerima.value == "Depok") {
                jarak = 42;
            } else if(kotaPengirim.value == "Bekasi" && kotaPenerima.value == "Tangerang") {
                jarak = 56;
            } 

            // cek service pengiriman
            if(servicePengiriman.value == "-- Pilih Service --") {

                alert("Harus memilih service pengiriman !");
            } 

            else {

                if(servicePengiriman.value == "Reguler") {
                    hargaService = 3000;
                } else if(servicePengiriman.value == "Express") {
                    hargaService = 6000;
                }

                var hargaBerat = beratBarang.value * 2000;
                hargaPengiriman = (hargaService * jarak) + hargaBerat;

                // alert(hargaPengiriman);
                var hargaWithComma = Number(hargaPengiriman).toLocaleString("en");

                hargaTotal.textContent = "Rp " + hargaWithComma; 
                harga.value = hargaPengiriman;
            }
        }
    }

});


submitBtn.addEventListener("click", function() {
    addData();
});

function addData() {
	if(namaPengirim.value == "" || 
	        alamatPengirim.value == "" || nomorPengirim.value == "" || 
	        namaPenerima.value == "" || 
	        alamatPenerima.value == "" || nomorPenerima.value == "" ||
	        beratBarang.value == "") {

	            alert("Data tidak boleh kosong");
	} else {
		
		
		if(kotaPengirim.value === "-- Pilih Kota --" || kotaPenerima.value === "-- Pilih Kota --" 
			|| servicePengiriman.value === "-- Pilih Service --") {
			
			alert("Harus memilih kota dan service pengiriman !");
		}
		
		else {
			
			 var last4 = nomorPengirim.value.substr(nomorPengirim.value.length - 4);
			    var idPengiriman = "KR" + last4;

			    var database = firebase.database();
			    var dbRef = database.ref("data_pengiriman/" + idPengiriman);

			    dbRef.set({

			        kode_pengiriman : idPengiriman,
			        
			        nama_pengirim : namaPengirim.value,
			        kota_pengirim : kotaPengirim.value,
			        alamat_pengirim : alamatPengirim.value,
			        no_hp_pengirim : nomorPengirim.value,

			        nama_penerima : namaPenerima.value,
			        kota_penerima : kotaPenerima.value,
			        alamat_penerima : alamatPenerima.value,
			        no_hp_penerima : nomorPenerima.value,

			        status_pengiriman : "Sedang Dalam Proses",
			        service_pengiriman : servicePengiriman.value,
			        berat_barang : beratBarang.value,

			        harga_pengiriman : harga.value
			    }).then(function() {
			        alert("Data berhasil disimpan !");

			        alert("Kode pengiriman anda : " + idPengiriman);
			        
			        
			        window.location.replace("berandaAdmin.jsp");
			    }).catch(function(error) {

			        alert(error);
			    });
		}
	}
}