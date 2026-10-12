import {
  CHtmlComponent
} from "./codemelted.js";

class CProjectToolbar extends CHtmlComponent {
  constructor() {
    super({
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
