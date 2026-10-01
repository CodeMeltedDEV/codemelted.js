---
title: Module Tests
---
<center>
  <img style="width: px; "src="https://codemelted.com/assets/favicon/codemelted-js/android-chrome-192x192.png" />
  <h1>codemelted.js Tests</h1>
  <button style="cursor: pointer;" onclick="open_test('coverage-browser/index.html');">Browser</button>
  <button style="cursor: pointer;" onclick="open_test('coverage-bun/tests/index.html');">Bun</button>
  <button style="cursor: pointer;" onclick="open_test('coverage-deno/tests/index.html');">Deno</button>
  <button style="cursor: pointer;" onclick="open_test('coverage-node/tests/index.html');">NodeJS</button>
  <br><br>
</center>

<div style="height: 0px; overflow: hidden; padding-bottom: 625px; position: relative;">
  <iframe id="frm_test" allowfullscreen="" src="https://codemelted.com/app/tv.html" style="border: 0; height: 100%; left: 0; position: absolute; top: 0; width: 100%;"></iframe>
</div>

<script>
  function open_test(url) {
    document.getElementById("frm_test").src=`https://js.codemelted.com/${url}`;
  }
  open_test("coverage-browser/index.html");
</script>