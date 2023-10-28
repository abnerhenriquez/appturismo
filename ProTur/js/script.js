
window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
      });
}

});

window.addEventListener("load", function () {
    // Agrega un evento de clic al botón de búsqueda
    var botonBuscar = document.getElementById('botonBuscar');
    botonBuscar.addEventListener('click', buscarPorID);
});

function buscarPorID(event) {
    var id = document.getElementById('idBuscar').value;
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "../controller/buscar.php?idBuscar=" + id, true);

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var resultado = document.getElementById('resultadoBusqueda');
            resultado.innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}


