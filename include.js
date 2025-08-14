function includeHTML() {
  var z, i, elmnt, file, xhttp;
  /* Loop through a collection of all HTML elements: */
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    /*search for elements with a certain atrribute:*/
    file = elmnt.getAttribute("include-html");
    if (file) {
      /* Make an HTTP request using the attribute value as the file name: */
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function () {
        if (this.readyState == 4) {
          if (this.status == 200) { elmnt.innerHTML = this.responseText; }
          if (this.status == 404) { elmnt.innerHTML = "Page not found."; }
          /* Remove the attribute, and call this function once more: */
          elmnt.removeAttribute("include-html");
          includeHTML();
        }
      }
      xhttp.open("GET", file, true);
      xhttp.send();
      /* Exit the function: */
      return;
    }
  }
}

function includeHEAD() {
  const icon = document.createElement('link');
  const meta = document.createElement('meta');
  const styles = document.createElement('link');
  
  meta.setAttribute('charset', 'utf-8');
  icon.href = "img/favicon.ico";
  icon.rel = 'icon';
  styles.href = "css/style.css";
  styles.rel = 'stylesheet';
  
  
  document.head.appendChild(icon);
  document.head.appendChild(styles);
  document.head.appendChild(meta);

}

setTimeout(() => {
  const url = new URL(window.location.href);
  ruta = url.pathname.split("/")[2];
  console.log(ruta);
  inicio = document.querySelector("#inicio");
  rutas = document.getElementById("rutas");
  tarifas = document.getElementById("tarifas");
  pasajeros = document.getElementById("pasajeros");
  empleados = document.getElementById("empleados");
  about = document.getElementById("about");
  pqrs = document.getElementById("pqrs");
  contact = document.getElementById("contact");
  if (ruta == "index.html") inicio.classList += " active";
  if (ruta == "rutas-horarios.html") rutas.classList += " active";
  if (ruta == "tarifas.html") tarifas.classList += " active";
  if (ruta == "pasajeros.html") pasajeros.classList += " active";
  if (ruta == "empleados.html") empleados.classList += " active";
  if (ruta == "about.html") about.classList += " active";
  if (ruta == "pqrs.html") pqrs.classList += " active";
  if (ruta == "contact.html") contact.classList += " active";
}, 1000);

includeHEAD();