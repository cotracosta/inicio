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
  const meta2 = document.createElement('meta');
  const styles = document.createElement('link');
  const carousel = document.createElement('link');
  const tempusdominus = document.createElement('link');
  const fontAwesome = document.createElement('link');

  meta.setAttribute('charset', 'utf-8');
  meta2.setAttribute('content', 'width=device-width, initial-scale=1.0');
  meta2.setAttribute('name', 'viewport');
  meta2.content = "width=device-width, initial-scale=1.0";
  meta2.name = "viewport";
  icon.href = "img/favicon.ico";
  icon.rel = 'icon';
  styles.href = "css/style.css";
  styles.rel = 'stylesheet';
  carousel.href = "lib/owlcarousel/assets/owl.carousel.min.css";
  carousel.rel = "stylesheet";
  tempusdominus.href = "lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css";
  tempusdominus.rel = "stylesheet";
  fontAwesome.href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css";
  fontAwesome.rel = "stylesheet";

  document.head.appendChild(meta);
  document.head.appendChild(meta2);
  document.head.appendChild(icon);
  document.head.appendChild(fontAwesome);
  document.head.appendChild(carousel);
  document.head.appendChild(tempusdominus);
  document.head.appendChild(styles);

  const jquery = document.createElement('script');
  const bootstrap = document.createElement('script');
  jquery.src = "https://code.jquery.com/jquery-3.7.0.min.js";
  bootstrap.src = "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js";
  document.body.appendChild(jquery);
  document.body.appendChild(bootstrap);

}

function includeFOOTER() {
  const jquery = document.createElement('script');
  const bootstrap = document.createElement('script');
  const easing = document.createElement('script');
  const owlcarousel = document.createElement('script');
  const moment = document.createElement('script');
  const momentTimezone = document.createElement('script');
  const tempusdominus = document.createElement('script');

  const jqBootstrapValidation = document.createElement('script');
  const contact = document.createElement('script');

  const jsMain = document.createElement('script');

  jquery.src = "https://code.jquery.com/jquery-3.7.0.min.js";
  bootstrap.src = "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js";
  easing.src = "lib/easing/easing.min.js";
  owlcarousel.src = "lib/owlcarousel/owl.carousel.min.js";
  moment.src = "lib/tempusdominus/js/moment.min.js";
  momentTimezone.src = "lib/tempusdominus/js/moment-timezone.min.js";
  tempusdominus.src = "lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js";

  jqBootstrapValidation.src = "mail/jqBootstrapValidation.min.js";
  contact.src = "mail/contact.js";

  jsMain.src = "js/main.js";
  document.body.appendChild(jquery);
  document.body.appendChild(bootstrap);
  document.body.appendChild(easing);
  document.body.appendChild(owlcarousel);
  document.body.appendChild(moment);
  document.body.appendChild(momentTimezone);
  document.body.appendChild(tempusdominus);

  document.body.appendChild(jqBootstrapValidation);
  document.body.appendChild(contact);

  document.body.appendChild(jsMain);

}
setTimeout(() => {
  const url = new URL(window.location.href);
  ruta = url.pathname.split("/")[2];
  // console.log(ruta);
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
// includeFOOTER();