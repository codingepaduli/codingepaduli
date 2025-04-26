---
type: "threejsR124"
title: "three.js Lez. X - Transizione al nuovo Three.js ES6"
description: "Transizione al nuovo Three.js ES6"
date: 2023-12-16
publishdate: 2023-12-16
lastmod: 2023-12-16
categories: ["coding", "web", "three.js"]
keywords: ["coding", "web", "three.js"]
draft: false
toc: false
summary: "Transizione al nuovo Three.js ES6"
weight: 8980

references:
    -   title: "three.js"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://threejs.org/"
        description: "libreria di rendering grafico 3D"
    -   title: "three.js - Sito GitHub"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/mrdoob/three.js/"
        description: "libreria di rendering grafico 3D - Sito GitHub"
    -   title: "enable3d.io"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://enable3d.io/"
        description: "enable3d.io brings physics to your three.js project and the third dimension to your Phaser 3 game"
    -   title: "enable3d.io - Sito GitHub"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/enable3d/enable3d"
        description: "enable3d.io brings physics to your three.js project and the third dimension to your Phaser 3 game - Sito GitHub"
    -   title: "Google Earth 3D Tiles as GLTF file"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://omarshehata.github.io/google-earth-as-gltf/"
        description: "fetching & rendering Google Earth 3D Tiles in ThreeJS"
---

# Transizione al nuovo Three.js ES6

Il nuovo Three.js ES6 (versione > r125) [rimuove le geometrie, lasciando solo le BufferedGeometries](https://github.com/mrdoob/three.js/wiki/Migration-Guide#r124--r125) e passa alla versione ES6 "con moduli" (libreria three.js.module); Ci sono [aggiornamenti dei colori](https://discourse.threejs.org/t/updates-to-lighting-in-three-js-r155/53733) e [dell'illuminazione](https://discourse.threejs.org/t/updates-to-lighting-in-three-js-r155/53733) per citarne alcuni.

Questa esercitazione è un'iniziale migrazione a ES6, da studiare e completare.

<!-- markdownlint-disable MD033 -->

<script type="importmap">
  {
    "imports": {
        "three": "https://unpkg.com/three@0.156.0/build/three.module.js",
        "three/addons/": "https://unpkg.com/three@0.156.0/examples/jsm/"
    }
  }
</script>

<script type="module">
import * as THREE from 'three';
// import { GLTFLoader } from 'three/addons/GLTFLoader.js';

var scene = new THREE.Scene();

// set a camera
var camera = new THREE.PerspectiveCamera( 75, window.innerWidth/window.innerHeight, 0.1, 1000 );
camera.position.x = 30;
camera.position.y = 30;
camera.position.z = 100;

// add a light
const light = new THREE.PointLight(0xFFFFFF, 3);
light.position.x = 0;
light.position.y = 30;
light.position.z = 30;
scene.add(light);

const ambientLight = new THREE.AmbientLight( 0x404040, 0.6 );
scene.add( ambientLight );

// adds the axis
var axis = new THREE.AxesHelper(50, 0, 0, 0x00ff00);
scene.add(axis);

// adds the helper
const cameraHelper = new THREE.CameraHelper(light.shadow.camera);
scene.add(cameraHelper);

// THREE.WebGLRenderer.useLegacyLights=true;
var renderer = new THREE.WebGLRenderer(
  {canvas: document.querySelector("#canvas")}
);

// FIXME - Fix lighting major change
// See: https://discourse.threejs.org/t/updates-to-lighting-in-three-js-r155/53733
renderer.useLegacyLights=true;

renderer.setSize( renderer.domElement.clientWidth, renderer.domElement.clientHeight );

//document.body.appendChild( renderer.domElement );

// Start coding here

class Stella {
  constructor(n, x, y) {
      this.nome = n;
      this.x = x;
      this.y = y;
      this.pianeta = null;
  }

  ruota(tempo) {
      if (this.pianeta != null) {
          this.pianeta.x = this.x + Math.cos(tempo) * this.pianeta.distanza;
          this.pianeta.y = this.y + Math.sin(tempo) * this.pianeta.distanza;

          this.pianeta.ruota(tempo);
      }
  }
}

class Pianeta {
  constructor(n, d) {
      this.nome = n;
      this.distanza = d;
      this.luna = null;
      this.x = 0;
      this.y = 0;
  }

  ruota(tempo) {
      if (this.luna != null) {
          this.luna.x = this.x + Math.cos(6*tempo) * this.luna.distanza;
          this.luna.y = this.y + Math.sin(6*tempo) * this.luna.distanza;
      }
  }
}

class Luna {
  constructor(n, d) {
      this.nome = n;
      this.distanza = d;
      this.x = 0;
      this.y = 0;
  }
}

let stella = new Stella("Sole", 0, 0);
let terra = new Pianeta("Terra", 45);
let luna = new Luna("Luna", 6);

stella.pianeta = terra;
terra.luna = luna;

// create the geometry with the material for the head
var sunMaterial = new THREE.MeshPhongMaterial({color: 0xff7700});
var sunGeometry = new THREE.SphereGeometry( 20, 10, 10 );
var stellaSphere = new THREE.Mesh( sunGeometry, sunMaterial );

var earthMaterial = new THREE.MeshPhongMaterial({color: 0x1111ff});
var earthGeometry = new THREE.SphereGeometry( 5, 10, 10 );
var terraSphere = new THREE.Mesh( earthGeometry, earthMaterial );

var moonMaterial = new THREE.MeshPhongMaterial({color: 0x887788});
var moonGeometry = new THREE.SphereGeometry( 1, 10, 10 );
var lunaSphere = new THREE.Mesh( moonGeometry, moonMaterial );

stellaSphere.position.set(stella.x, 0, stella.y);
scene.add(stellaSphere);

terraSphere.position.set(terra.x, 0, terra.y);
scene.add(terraSphere);

lunaSphere.position.set(luna.x, 0, luna.y);
scene.add(lunaSphere);

let alpha = 0;

var animate = function () {
    requestAnimationFrame( animate );

    alpha += 0.01;
    stella.ruota(alpha);

    stellaSphere.position.set(stella.x, 0, stella.y);
    terraSphere.position.set(terra.x, 0, terra.y);
    lunaSphere.position.set(luna.x, 0, luna.y);

    renderer.render( scene, camera );
};

animate();
</script>

<canvas id="canvas" style="width: 100%; height: 100%;"></canvas>

<!-- markdownlint-enable MD033 -->