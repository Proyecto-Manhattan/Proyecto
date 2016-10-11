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