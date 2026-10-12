import {
  CHtmlComponent
} from "./codemelted.js";

class CPageHeader extends CHtmlComponent {
  constructor() {
    super({shadow_mode: "none"});
    const title = this.getAttribute("title") ?? "";
    this.innerHTML = `
      <style>
        cm-print-button {
          --bg-color: transparent;
          --border: none;
          --hover-bg-color: none;
          --color: white;
          --font-size: small;
          --hover-color: none;
        }
      </style>
      <h1>${title}</h1>
      <center>
        <img style="width: 100%;" src="https://js.codemelted.com/assets/images/logo-codemelted-js.png" />
        <a aria-label="Follow @CodeMeltedDEV on GitHub" class="github-button" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-show-count="true" data-size="small" href="https://github.com/CodeMeltedDEV" title="Follow @CodeMeltedDEV on GitHub">CodeMeltedDEV</a>
        <a aria-label="Watch codemelteddev/codemelted.js on GitHub" class="github-button" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-icon="octicon-eye" data-show-count="true" data-size="small" href="https://github.com/codemelteddev/codemelted.js/subscription" title="Watch codemelteddev/codemelted.js on GitHub">Watch</a>
        <a aria-label="Sponsor @CodeMeltedDEV on GitHub" class="github-button" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-icon="octicon-heart" data-size="small" href="https://github.com/sponsors/CodeMeltedDEV" title="Sponsor @CodeMeltedDEV and the codemelted.js Project on GitHub">Sponsor</a>
        <br>
        <a aria-label="Discuss codemelteddev/codemelted.js on GitHub" class="github-button" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-icon="octicon-comment-discussion" data-size="small" href="https://github.com/codemelteddev/codemelted.js/discussions" title="Discuss codemelteddev/codemelted.js on GitHub">Discuss</a>
        <a aria-label="Download codemelteddev/codemelted.js on GitHub" class="github-button" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-size="small" href="https://github.com/codemelteddev/codemelted.js/archive/HEAD.zip" tabindex="1" title="Download codemelteddev/codemelted.js on GitHu">Download</a>
        <a aria-label="Fork codemelteddev/codemelted.js on GitHub" class="github-button" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-icon="octicon-repo-forked" data-size="small" href="https://github.com/codemelteddev/codemelted.js/fork" title="Fork codemelteddev/codemelted.js on GitHub">Fork</a>
        <a aria-label="Issue codemelteddev/codemelted.js on GitHub" class="github-button" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-icon="octicon-issue-opened" data-size="small" href="https://github.com/codemelteddev/codemelted.js/issues" title="Issue codemelteddev/codemelted.js on GitHub">Issue</a>
        <br>
        <cm-print-button></cm-print-button>
        <br>
      </center>
    `;
    const script = document.createElement('script');
    script.src = "https://buttons.github.io/buttons.js";
    this.appendChild(script);
  }
}
CHtmlComponent.register_component("cm-page-header", CPageHeader);

class CProjectToolbar extends CHtmlComponent {
  constructor() {
    super({
      shadow_mode: "open",
      connected_cb: () => {
        this.shadow_root.innerHTML = `
          <style>
            body {
              margin-bottom: 55px;
            }
            cm-app-toolbar {
              --toolbar-height: 50px;
              --toolbar-padding: 0;
            }
            @media print {
              cm-app-toolbar {
                display: none;
              }
            }
          </style>
          <cm-app-toolbar position="bottom">
            <img style="height: 50px;" src="/assets/images/logo-codemelted-js.png" />
          </cm-app-toolbar>
        `;
      }
    });
  }
}
CHtmlComponent.register_component("cm-project-toolbar", CProjectToolbar);
