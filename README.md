---
title: codemelted.js Project
---
<center>
  <img style="width: px; "src="favicon/android-chrome-192x192.png" />
  <h1>codemelted.js Project</h1>
  <button style="cursor:pointer;" onclick="window.print();">Print</button>
</center>

- [FEATURES](#features)
- [GETTING STARTED](#getting-started)
  - [Clone / Fork](#clone--fork)
  - [Content Delivery Network (CDN)](#content-delivery-network-cdn)
  - [V8 Runtime Utilization](#v8-runtime-utilization)
- [USAGE](#usage)
- [LICENSE](#license)

# FEATURES

The `codemelted.js` module implements 14 domain specific use cases. These are implementation wrappers around Browser / Deno APIs to deliver a reusable tested way to build fullstack solutions. Domain use cases not available as wrappers are compiled via the `codemelted_lib` Rust static library and accessed via the `codemelted.js` module via the Deno Foreign Function Interface (FFI).

The *codemelted.js Project* SDK documentation provides ways of detecting feature availability so your code can operate properly within a fullstack project. Any violation of the `codemelted.js` module API will throw a `CModuleError` with full stack trace of the violation.

The sections below break down the architecture of the module and how the domain use cases are implemented.

# GETTING STARTED

The following section breaks down how to clone / fork the project and build it, utilizing a CDN to consume the `codemelted.js` module directly, or utilizing the `codemelted` native CLI command to download the module directly into your project.

## Clone / Fork

When you clone / fork the *codemelted.js Project* repo, you will need to install tools to properly build the project. The following represents how to setup those tools.

1. Install [PowerShell Core](https://learn.microsoft.com/en-us/powershell/scripting/install/install-powershell?view=powershell-7.6) for your given operating system.
2. Navigate to *codemelted.js Project* repo location.
3. Open a terminal and execute `./build.ps1 --setup`. Follow the instructions to install all the necessary repo tooling.
4. Once completed, execute `./build.ps1 --help` to gain an understanding of how to build the project in the future.

## Content Delivery Network (CDN)

The `codemelted.js` module is hosted on GitHub and delivered via the
`jsdelivr` CDN. The following represents the URLs for accessing the module. These can be utilized with `import` statements within JavaScript /TypeScript or as part of the `<script type="module"></script>` tags of a website.
- **Latest Version (Risky):**
  ```txt
  https://cdn.jsdelivr.net/gh/codemelteddev/codemelted.js/codemelted.js
  ```
- **Version Controlled (Safest):**
  ```txt
  https://cdn.jsdelivr.net/gh/codemelteddev/codemelted.js@XX.Y.Z/codemelted.js
  ```

**NOTES:**
1. The `@XX.Y.Z` corresponds to the releases of the *codemelted.js Project* as identified on GitHub.
2. `XX` corresponds to the year of the release. A change in this value resets `Y` and `Z` to `0` respectively.
3. `Y` corresponds to an API breaking change. A change in this number resets `Z`.
4. `Z` corresponds to a newly delivered feature / bug fix that should not break other API functions.

## V8 Runtime Utilization

Deno and Node are popular V8 runtimes typically for cloud / backend server-side services development. For the cloud portion, all the source files are packaged and delivered to support the given cloud service. Additionally, each of these runtimes has an ability to "compile" all source files into a given operating system executable. To support these options, the `codemelted.js` module can be downloaded into your project structure via the following command.

<mark>Command below is not available yet.</mark>

```sh
codemelted --dev-fetch-codemelted-js [version] [path]
```
This then allows for you to develop your project independent of changes to the overall *codemelted.js Project*. You also have the ability to utilize TypeScript since the `codemelted.js` module has full JSDoc documentation and `// @ts-check` turned on by default.

**NOTE:** You can utilize this method for building complex web apps as well. It is not just for V8 JavaScript runtimes.

# USAGE

**ES6 Module Import Example**

```js
// Import whole module statically via URL or local path
import * as codemelted from "path/to/codemelted.js";

// Import elements to use statically via URL or local path
import { exported_element } from "path/to/codemelted.js";

// Dynamically import all module elements to named variable
let codemelted = await import("path/to/codemelted_xxx.js");
```
**Via Script Tag in HTML File**

```html
<script type="module">
  // Use the import examples above to utilize the script functions.
</script>
```
**NOTES:**

1. The `codemelted.js` module is TypeScript compliant so it can be utilized within TypeScript projects to get full code completion.
2. The examples above should work whether downloaded for direct inclusion into your project or accessed via jsdelivr for a website.

# LICENSE

MIT License

© 2025-2026 Mark Shaffer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
