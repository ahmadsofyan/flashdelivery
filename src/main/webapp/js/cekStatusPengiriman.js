var searchInput = document.getElementById("searchInput");
var spanKode = document.getElementById("kodePengiriman");
var modalBody = document.getElementById("modalBody");

function cekStatus() {

    var kodePengiriman = searchInput.value.toUpperCase();

    if(kodePengiriman === "") {
        
        alert("Anda harus memasuki kode pengiriman")
    }

    else {

        spanKode.textContent = kodePengiriman;

        var database = firebase.database();
        var dbRef = database.ref("data_pengiriman/" + kodePengiriman);

        dbRef.on("value", function(snapshot) {

            var data = snapshot.val();

            if(data === null) {
                
                modalBody.innerHTML = '<h6 class="text-danger">Data tidak ditemukan</h6>';
            } 

            else {

                modalBody.innerHTML = '<h6>Status Pengiriman Anda : <span class="text-danger">' + data.status_pengiriman + '</span></h6>';
            }
        });
    }

}