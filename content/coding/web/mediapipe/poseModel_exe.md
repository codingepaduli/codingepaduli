---
type: "mediapipe"
title: "Esercizi di AI - 03 Riconoscimento posa"
description: "Esercizi di AI - 03 Riconoscimento posa"
date: 2022-08-30
publishdate: 2022-08-30
lastmod: 2022-08-30
categories: ["coding", "web", "mediapipe"]
keywords: ["coding", "web", "mediapipe"]
draft: false
toc: false
summary: "Esercizi di AI - 03 Riconoscimento posa"
customJS: ["/static/js/p5-1.2.0-min.js"]
externalJS: ["https://cdn.jsdelivr.net/npm/@mediapipe/camera_utils/camera_utils.js", 
    "https://cdn.jsdelivr.net/npm/@mediapipe/control_utils/control_utils.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/control_utils_3d/control_utils_3d.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/drawing_utils/drawing_utils.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/pose/pose.js"]
---

# Riconoscimeto posa

## (doesn't work on Firefox, why?)

![Pose landmarks (punti di riferimento della posa)](https://google.github.io/mediapipe/images/mobile/pose_tracking_full_body_landmarks.png)

<div class="container">
    <div id="handsModel"></div>
    <video class="input_video"></video>
</div>


  <script>
      
    let canvas = null;
    let videoElement;
    let camera;
    let pose;
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

        const pose = new Pose({locateFile: (file) => {
            return `https://cdn.jsdelivr.net/npm/@mediapipe/pose/${file}`;
        }});
        pose.setOptions({
            modelComplexity: 1,
            smoothLandmarks: true,
            enableSegmentation: true,
            smoothSegmentation: true,
            minDetectionConfidence: 0.5,
            minTrackingConfidence: 0.5
        });
        pose.onResults(onResults);

        console.info("setup camera")
        const camera = new Camera(videoElement, {
            onFrame: async () => {
                await pose.send({image: videoElement});
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
        let poseData = [];
        if (results === undefined || results.poseLandmarks === undefined || 
                results.poseLandmarks.length === undefined || results.poseLandmarks.length == 0) {
            background("black");
            text("VUOTO", 30, 30);
            poseData = undefined;
        } else {
            poseData = results.poseLandmarks;
            background("green");
            text("PIENO", 30, 30);
        }
        
        if (poseData !== undefined) {
            console.info(poseData[0].x * 640 + " - " + poseData[0].y * 480, 60, 60);
            
            strokeWeight(5);
            stroke("white");
            for (let i=0; i<poseData.length; i++) {
                point(poseData[i].x * 640, poseData[i].y * 480);
            }
        }
        
    }
  </script>