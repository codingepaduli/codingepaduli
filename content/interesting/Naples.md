---
type: "interesting"
title: "Naples"
description: "Naples"
date: 2026-03-01
publishdate: 2026-03-01
lastmod: 2026-03-01
categories: ["interesting"]
keywords: ["interesting"]
draft: false
toc: false
summary: "Naples"
---

# Places in Naples

<!-- markdownlint-disable MD033 -->

<!-- Content Security Policy che permette gli script "unsafe" online -->
<meta http-equiv="Content-Security-Policy" content="script-src 'self' 'unsafe-inline'  https://unpkg.com https://cdn.jsdelivr.net ;">

<!-- load the element https://www.webcomponents.org/element/@nfreear/my-map -->
<script src="https://unpkg.com/@nfreear/my-map@1" type="module"></script>

<my-map id="myMap" latlng="40.8363100,14.2464100" zoom="12.5">
  <marker latlng="40.8363100, 14.2464100">Napoli</marker>
</my-map>

<!-- Come documentato, le immagini si trovano ai link:
  https://github.com/nfreear/elements/blob/main/src/components/MyMapElement.js
  iconUrl: 'https://unpkg.com/leaflet@1.9.4/dist/images/marker-icon-2x.png',
  shadowUrl: 'https://unpkg.com/leaflet@1.9.4/dist/images/marker-shadow.png'
-->

<p>
  <p> . </p>
  <p> . </p>
  Per reperire latitudine e longitudine usa questo servizio
  <a href="https://www.gps-longitudine-latitudine.it/">
    gps
  </a>
</p>

<script type="application/javascript">
  /* Geolocalizzo l'utente */
  if ("geolocation" in navigator) {
    navigator.geolocation.getCurrentPosition((position) => {
      const latitude = position.coords.latitude;
      const longitude = position.coords.longitude;

      console.log(`Latitudine: ${latitude}, Longitudine: ${longitude}`);

      // Crea un nuovo marcatore
      const newMarker = document.createElement('marker');
      newMarker.setAttribute('latlng', `${latitude}, ${longitude}`);
      newMarker.setAttribute('popup', 'Tu sei qua!');
      newMarker.innerText = 'Tu sei qua';

      // Aggiunge il nuovo marcatore al componente my-map
      const myMap = document.getElementById('myMap');
      myMap.appendChild(newMarker);
    }, (error) => {
      console.error("Errore nella geolocalizzazione:", error);
    });
  }
</script>

<!-- markdownlint-enable MD033 -->
