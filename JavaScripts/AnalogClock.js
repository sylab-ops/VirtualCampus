function ShowTime() {
    var Date = new Date();
    document.getElementById("<%TextBox1.ClientID %>").value = Date.toLocaleString();
    window.setTimeout("ShowTime", 1000);
}