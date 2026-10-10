---
title: "Change Log"
date: 2026-Oct-05
author: "Mark Shaffer"
description: "Represents the modifications to the codemelted.js module and codemelted-cli.ts files of this project."
tags: [changelog, codemelted.js, ES6 Module, TypeScript, JavaScript]
---
<center>
  <br>
  <img style="width: 100%; "src="https://codemelted.com/assets/images/logo-codemelted-js.png" />
  <h1>codemelted.js Project Change Log</h1>
  <br>
</center>

Represents the modifications to the codemelted.js module and codemelted-cli.ts files of this project.

**Table of Contents**

- [v26.0.0-alpha (2026-OCT-DD)](#v2600-alpha-2026-oct-dd)
  - [Added](#added)
  - [Changed](#changed)
  - [Fixed](#fixed)

## v26.0.0-alpha (2026-OCT-DD)

[Download]()

Initial alpha release of the module. Alpha because additional testing is necessary to ensure the module is production ready. Until then, it is usable for browser runtime environments with the understanding some of the *UI Domain Use Cases* may have issues. The primary focus of this project is to deliver a fully consumable `codemelted.js` module to build full stack engineering solutions utilizing Deno as the main V8 JavaScript runtime while ensuring the module can be utilized in other V8 JavaScript runtimes. The Browser runtime provides the client side capabilities. Finally, the `codemelted_lib.rs` module will provide a proper static library for domain use cases that Deno does not provide an API.

### Added

- Setup full testing capabilities on Browser, Bun, Deno, Node, and Worker runtimes to ensure `codemelted.js` usability in any JavaScript runtime environment.
- Stubbed out the `codemelted-cli.ts` for future development of the codemelted native CLI tool.
- Completed all the build toolchains for the project captured within the `build.ps1` file.
- Established the basics of the `codemelted_lib.rs` module definition to setup a static library for Deno.
- Began the software engineering process for the `codemelted.js` module. It is a collection of the initial 14 domain use cases that were prototyped in different forms but now bringing it back to a proper software engineering process.
- The domain use cases that have been developed to this point are Async, Disk (client side only), JSON, Logger, Runtime (more to come), Storage, and basic UI API wrappers (need further testing).
- All other explored domain use cases are in varying stages of prototype within the `codemelted.js` module with a `ABOUT_MODULE.todos` section capturing where things stand.

### Changed

- N/A

### Fixed

- N/A
