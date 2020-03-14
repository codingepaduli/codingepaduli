---
type: "webApp"
title: "Question And Answer WebApp"
description: "Question and Answer WebApp, per domande sul diritto allo studio."
date: 2019-12-27
publishdate: 2019-12-27
lastmod: 2019-12-27
categories: ["webApp"]
keywords: ["webApp"]
draft: false
toc: false
notesforauthors: "Question and Answer WebApp, per domande sul diritto allo studio."
summary: "Question and Answer WebApp, per domande sul diritto allo studio."
# menu identifier and text to show
# menu: "main"
# linktitle: "Question And Answer WebApp"
---  
  
  <script type="text/javascript" src="/static/webApp/questionAndAnswer.js"></script>

  <style>
    .btn-outline-primary {
      border-color: #033C73;
      color: #033C73;
    }
    .btn-outline-info {
      border-color: #2FA4E7;
      color: #2FA4E7;
    }
    .btn-success {
      background-color: green;
    }
    .btn-danger {
      background-color: lightcoral;
    }
    .btn-block {
      display: block;
      width: 100%;
      text-align: center;
      vertical-align: middle;
    }
    input {
      white-space:normal !important;
      word-wrap: break-word;
      word-break: normal;
    }
  </style>
  
  <form>
    <fieldset>
      <input type="button" class="btn-block wpcf7-form-control wpcf7-submit " onclick="ask()" value="Prossima domanda">
      <input id="question" type="button" readonly="" class="form-control-plaintext" id="staticEmail" value="">
      <input id="answer1" type="button" class="wpcf7-form-control wpcf7-text btn-block" onclick="check(this.id)">
      <input id="answer2" type="button" class="wpcf7-form-control wpcf7-text btn-block" onclick="check(this.id)">
      <input id="answer3" type="button" class="wpcf7-form-control wpcf7-text btn-block" onclick="check(this.id)">
      <input id="answer4" type="button" class="wpcf7-form-control wpcf7-text btn-block" onclick="check(this.id)">
    </fieldset>
  </form>
