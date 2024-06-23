---
type: "mediapipe"
title: "Esercizi di AI - 04 Scheletrizzazione della posa"
description: "Esercizi di AI - 04 Scheletrizzazione della posa"
date: 2022-08-30
publishdate: 2022-08-30
lastmod: 2022-08-30
categories: ["coding", "web", "mediapipe"]
keywords: ["coding", "web", "mediapipe"]
draft: false
toc: false
summary: "Esercizi di AI - 04 Scheletrizzazione della posa"
customJS: ["/static/js/p5-1.2.0-min.js"]
externalJS: ["https://cdn.jsdelivr.net/npm/@mediapipe/camera_utils/camera_utils.js", 
    "https://cdn.jsdelivr.net/npm/@mediapipe/control_utils/control_utils.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/control_utils_3d/control_utils_3d.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/drawing_utils/drawing_utils.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/pose/pose.js"]
---

# Scheletrizzazione della posa

<!-- markdownlint-disable MD033 MD011 -->

![Pose landmarks (punti di riferimento della posa)](https://mediapipe.dev/images/mobile/pose_tracking_full_body_landmarks.png)

<div class="container">
    <div id="handsModel"></div>
    <button id="fullscreen">Fullscreen</button>
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

    let headImg;
    let bodyImg;
    let rightHandImg;
    let leftHandImg;
    function preload() {
        headImg = loadImage('/static/coding/web/mediapipe/Head.png');
        bodyImg = loadImage('/static/coding/web/mediapipe/Body.png');
        rightHandImg = loadImage('/static/coding/web/mediapipe/rightHand.png');
        leftHandImg = loadImage('/static/coding/web/mediapipe/leftHand.png');
        console.info("immagini precaricate");
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
            enableSegmentation: false,
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

            // draw the head
            headTopLeftX = poseData[8].x * 640;
            headTopLeftY = poseData[6].y * 480;
            headWidth = poseData[7].x * 640 - poseData[8].x * 640;
            headHeight = poseData[10].y * 480 - poseData[6].y * 480;
            image(headImg, headTopLeftX - headWidth/2, headTopLeftY - headHeight, headWidth*2, headHeight*3);

            // draw the body
            bodyTopLeftX = poseData[12].x * 640;
            bodyTopLeftY = poseData[12].y * 480;
            bodyWidth = poseData[11].x * 640 - poseData[12].x * 640;
            bodyHeight = poseData[24].y * 480 - poseData[12].y * 480;
            image(bodyImg, bodyTopLeftX, bodyTopLeftY, bodyWidth, bodyHeight);

            // draw the right hand
            rightHandTopLeftX = poseData[20].x * 640;
            rightHandTopLeftY = poseData[20].y * 480;
            rightHandWidth = poseData[20].x * 640 - poseData[18].x * 640;
            rightHandHeight = poseData[16].y * 480 - poseData[20].y * 480;
            image(rightHandImg, rightHandTopLeftX, rightHandTopLeftY, 4*rightHandWidth, 2*rightHandHeight);

            // draw the left hand
            leftHandTopLeftX = poseData[19].x * 640;
            leftHandTopLeftY = poseData[19].y * 480;
            leftHandWidth = poseData[17].x * 640 - poseData[19].x * 640;
            leftHandHeight = poseData[15].y * 480 - poseData[19].y * 480;
            image(leftHandImg, leftHandTopLeftX, leftHandTopLeftY, 4*leftHandWidth, 2*leftHandHeight);
        }

    }

    const fullscreenBtn = document.querySelector("#fullscreen");

    fullscreenBtn.addEventListener('click', function(event) {
      if (!document.fullscreenElement) {
        let canvasNode = document.querySelector('#defaultCanvas0');
        canvasNode.requestFullscreen();
      } else if (document.exitFullscreen) {
        document.exitFullscreen();
      }
    });

</script>

<!-- markdownlint-enable MD033 MD011 -->
