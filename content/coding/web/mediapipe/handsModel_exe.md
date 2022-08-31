---
type: "mediapipe"
title: "Esercizi di AI - 01 Riconoscimento mano"
description: "Esercizi di AI - 01 Riconoscimento mano"
date: 2022-08-30
publishdate: 2022-08-30
lastmod: 2022-08-30
categories: ["coding", "web", "mediapipe"]
keywords: ["coding", "web", "mediapipe"]
draft: false
toc: false
summary: "Esercizi di AI - 01 Riconoscimento mano"
customJS: ["/static/js/p5-1.2.0-min.js"]
externalJS: ["https://cdn.jsdelivr.net/npm/@mediapipe/camera_utils/camera_utils.js", 
    "https://cdn.jsdelivr.net/npm/@mediapipe/control_utils/control_utils.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/control_utils_3d/control_utils_3d.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/drawing_utils/drawing_utils.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/hands/hands.js"]
---

# Riconoscimento mano

## (doesn't work on Firefox, why?)
<!-- L'errore su Firefox sembra simile a questo 
  <a href="https://github.com/google/mediapipe/issues/2704">https://github.com/google/mediapipe/issues/2704</a>  
  devo sperare in un aggiornamento delle librerie 
-->

![Hands landmarks (punti di riferimento della mano)](https://google.github.io/mediapipe/images/mobile/hand_landmarks.png)

<div class="container">
    <div id="handsModel"></div>
    <video class="input_video"></video>
</div>

<script>
      
    let canvas = null;
    let videoElement;
    let camera;
    let hands;
    let results;
    
    function onResults(risultati) {
        results = risultati;
        console.info("risultati letti");
    }

    function setup() {
        console.info("setup canvas");
        
        let canvasNode = document.querySelector('#handsModel');
        let cw = canvasNode.parentNode.clientWidth;
        canvas = createCanvas(640, 480).parent('handsModel');
        canvas.class('output_canvas');
        background("black");

        console.info("setup hands model");
        const videoElement = document.getElementsByClassName('input_video')[0];

        const hands = new Hands({locateFile: (file) => {
            return `https://cdn.jsdelivr.net/npm/@mediapipe/hands/${file}`;
        }});
        hands.setOptions({
            maxNumHands: 2,
            modelComplexity: 1,
            minDetectionConfidence: 0.5,
            minTrackingConfidence: 0.5
        });
        hands.onResults(onResults);

        console.info("setup camera")
        const camera = new Camera(videoElement, {
            onFrame: async () => {
                await hands.send({image: videoElement});
            },
            width: 1280,
            height: 720
        });
        
        camera.start();
        console.info("end setup")
    }

    function draw() {

        if (results !== undefined && results.image !== undefined) {
            //console.dir(results.image);
            //image(results.image, 0, 0);
        }

        fill("white");
        strokeWeight(1);
        let mano0 = [];
        if (results === undefined || results.multiHandLandmarks === undefined ||
                results.multiHandLandmarks.length === undefined || results.multiHandLandmarks.length == 0) {
            background("black");
            text("VUOTO", 30, 30);
            mano0 = undefined;
        } else {
            mano0 = results.multiHandLandmarks[0];
            background("green");
            text("PIENO", 30, 30);           
        }

        if (mano0 !== undefined && mano0[0] !== undefined ) {
            console.info(mano0[0].x * 640 + " - " + mano0[0].y * 480, 60, 60);
            
            strokeWeight(5);
            stroke("white");
            for (let i=0; i<mano0.length; i++) {
                point(mano0[i].x * 640, mano0[i].y * 480);
            }
        }
    }
</script>