function revisa() {
    var res = getElementById("resp");
    var htm = res.innerHTML;

    if (htm != "" || htm != null) {
        res.className += "list-group-item list-group-item-danger";
        alert("entre");
    }
    else {
        res.className = "";
        alert("no entre");
    }
}

function toogle(nombre){
    var name = nombre;
    $("#"+name).toggle();
}


function obtenAlumnos(){
    var alum = '<div class="col-sm-2 col-md-2 btn-img"><div class="thumbnail"><h3>Usuario</h3><img src="../img/no-user.png" alt="no-user"><div class="caption"><h3>Clave Unica</h3><div class="progress"><div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"><span class="sr-only">40% Complete (success)</span></div></div><div class="progress"><div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%"><span class="sr-only">20% Complete</span></div></div><div class="progress"><div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"><span class="sr-only">60% Complete (warning)</span></div></div><div class="progress"><div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"><span class="sr-only">80% Complete (danger)</span></div></div><p><a href="#" class="btn btn-primary" role="button">Ver</a> <a href="#" class="btn btn-danger" role="button">Eliminar</a></p></div></div></div>';
    var pa = $("#alumnos");
    for (var i = 10; i >= 0; i--) {
            pa.html(pa.html()+ alum);
        }
}


