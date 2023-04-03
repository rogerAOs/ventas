document.addEventListener("click", function(event) {
    if (event.target.classList.contains("comprar-btn")) {
      var id = event.target.dataset.id;
      if (confirm("¿Deseas comprar este producto?")) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            alert("Compra exitosa!");
          }
        };
        xhttp.open("POST", "actualizar_cantidad.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("id=" + id);
      }
    }
  });
  
