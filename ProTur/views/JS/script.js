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



function actualizarDatos(id) {
    var form = document.getElementById('form_' + id);
    var formData = new FormData(form);

    // Envía los datos al servidor usando AJAX
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "http://localhost:8080/ProTur/controller/update.php", true); // Corregido el URL
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Procesa la respuesta del servidor (puede mostrar un mensaje de éxito)
            alert(xhr.responseText);
        }
    };
    xhr.send(formData);
}

function eliminarDatos(id) {
    if (confirm("¿Seguro que deseas eliminar este registro?")) {
        // Si el usuario confirma la eliminación, redirecciona a una página que maneje la eliminación.
        // Puedes enviar la ID como parámetro a esa página para que sepa qué registro eliminar.
        window.location.href = "http://localhost:8080/ProTur/controller/delete.php?id=" + id;
    }
}


