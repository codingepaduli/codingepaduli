---
type: "mediapipe"
title: "Esercizi di AI - 05 Flappy Bird"
description: "Esercizi di AI - 05 Flappy Bird"
date: 2023-01-06
publishdate: 2023-01-06
lastmod: 2023-01-06
categories: ["coding", "web", "mediapipe"]
keywords: ["coding", "web", "mediapipe"]
draft: false
toc: false
summary: "Esercizi di AI - 05 Flappy Bird"
customJS: ["/static/js/p5-1.2.0-min.js"]
externalJS: ["https://cdn.jsdelivr.net/npm/@mediapipe/camera_utils/camera_utils.js", 
    "https://cdn.jsdelivr.net/npm/@mediapipe/control_utils/control_utils.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/control_utils_3d/control_utils_3d.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/drawing_utils/drawing_utils.js",
    "https://cdn.jsdelivr.net/npm/@mediapipe/pose/pose.js"]
---

# Flappy Bird

<!-- markdownlint-disable MD033 -->

<div class="container">
    <div id="flappyBird"></div>
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

        let canvasNode = document.querySelector('#flappyBird');
        let cw = canvasNode.parentNode.clientWidth;
        canvas = createCanvas(640, 480).parent('flappyBird');
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

    let circleY = 25;
    let rectX1 = 50;
    let rectX2 = 250;
    let rectX3 = 450;
    let rectY1 = 300;
    let rectY2 = 200;
    let rectY3 = 100;

    let leftAndRightUpStep1 = false;
    let leftAndRightUpStep2 = false;
    let leftArmY = 0;
    let rightArmY = 0;

    function draw() {
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

            text("braccia SU: " + leftAndRightUpStep1, 30, 50);
            text("braccia GIU: " + leftAndRightUpStep2, 30, 70);
        }

        if (poseData !== undefined) {
            console.info(poseData[0].x * 640 + " - " + poseData[0].y * 480, 60, 60);

            strokeWeight(5);
            stroke("white");
            for (let i=0; i<poseData.length; i++) {
                point(poseData[i].x * 640, poseData[i].y * 480);
            }

            fill('blue');
            circle(40, circleY, 50);

            fill('green');
            rect(rectX1, rectY1, 20, width - rectY1);
            rect(rectX2, rectY2, 20, width - rectY2);
            rect(rectX3, rectY3, 20, width - rectY3);

            leftHandY = poseData[19].y * 480;
            rightHandY = poseData[20].y * 480;

            // braccia su
            if (leftAndRightUpStep1 === false && leftHandY < 100 && rightHandY < 100 ) {
                leftAndRightUpStep1 = true;
            }

            // braccia giu
            if (leftAndRightUpStep2 === false && leftAndRightUpStep1 === true && leftHandY > 400 && rightHandY > 400 ) {
                leftAndRightUpStep2 = true;
            }

            // flap
            if (leftAndRightUpStep1 === true && leftAndRightUpStep2 === true && leftAndRightUpStep1 === true && leftAndRightUpStep2 === true) {
                circleY = circleY - 60;
                leftAndRightUpStep1 = false;
                leftAndRightUpStep2 = false;
            }

            circleY ++;

            rectX1 = rectX1 > 0 ? rectX1-1 : width;
            rectX2 = rectX2 > 0 ? rectX2-1 : width;
            rectX3 = rectX3 > 0 ? rectX3-1 : width;
        }

    }
</script>

<!-- markdownlint-enable MD033 -->
