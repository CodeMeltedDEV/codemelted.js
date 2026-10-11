---
title: "Domain Use Cases"
date: 2026-Oct-06
author: "Mark Shaffer"
description: "TBD"
tags: []
children:
  - async.md
  - console.md
  - crypto.md
  - db.md
  - hw.md
  - json.md
  - logger.md
  - math.md
  - module-core.md
  - monitor.md
  - network.md
  - process.md
  - runtime.md
  - storage.md
  - ui.md
---
<center>
  <br>
  <img style="width: 100%;" src="https://codemelted.com/assets/images/logo-codemelted-js.png" />
  <h1>Domain Use Cases</h1>
  <br>
</center>

**Table of Contents**

- [Model](#model)
- [References](#references)

# Model

<center>
  <img src="models/module/use-case-model.drawio.png" />
  <br><br>
</center>

| UC | Link                            | Description                                                                                                                                                                                     |
|:--:|---------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 00 | [Module Core](./module-core.md) | Defines the reusable objects / API violation rules that apply to the entire module and not just a specific use case.                                                                            |
| 01 | [Async](./async.md)             | Complex applications require the ability to asynchronously time slice up work as to not block the main synchronous processing thread.                                                           |
| 02 | [Console](./console.md)         | Command Line Interface (CLI) apps sometimes require basic input / output interaction with a user. Basic prompts working over STDIN / STDOUT / STDERR provides this capability.                  |
| 03 | [Crypto](./crypto.md)           | Apps needs to secure information from unauthorized usage. Cryptographic algorithms allow for hiding or coding information so that only authorized parties can read and process it.              |
| 04 | [Database](./db.md)             | Complicated data requires a way to be stored, recalled, and utilized. Embedded database technologies (IndexedDB `codemelted.js` / SQLite3 `codemelted.rs`) allow for this complex data storage. |
| 05 | [Disk](./disk.md)               | Applications have to interact with files on disk. That mean reading and writing to them along with managing them.                                                                               |
| 06 | [Hardware](./hw.md)             | Hardware peripherals are auxiliary devices connected to a computer to expand its capabilities. Applications connect to these peripherals via protocols specific to that hardware.               |
| 07 | [JSON](./json.md)               | JSON (JavaScript Object Notation) is a lightweight, plain-text format used to store and transfer structured data between a server and an application.                                           |
| 08 | [Logger](./logger.md)           | A utility that automatically records, tracks, and stores sequential data, system events, or user actions over time.                                                                             |
| 09 | [Math](./math.md)               | A collection of mathematical formulas for computational purposes.                                                                                                                               |
| 10 | [Monitor](./monitor.md)         | An ability to measure aspects of the host computer / operating system of a developed application is key in identifying metrics that can point to issues with the host system.                   |
| 11 | [Network](./network.md)         | A system of interconnected computing devices that communicate and share resources, data, and applications over wired or wireless connections.                                                   |
| 12 | [Process](./process.md)         | An instance of a computer program that is actively being executed by the operating system and the CPU. Bidirectional communication occurs via STDIN / STDOUT / STDERR.                          |
| 13 | [Runtime](./runtime.md)         | The supporting software, libraries, and virtual layer that sit between the app and the operating system to make the program run.                                                                |
| 14 | [Storage](./storage.md)         | A string based key / value pair combination for simple information storage and retrieval.                                                                                                       |
| 15 | [User Interface](./ui.md)       | A visual way for humans to interact with electronic devices, such as computers, smartphones, and ATMs, using graphics instead of text commands.                                                 |

# References

The following are the references to the external SDK documentation to implement the domain use cases for the `codemelted.js` and `codemelted.rs` modules.

| Reference                                                                                                      |  UC  | Description                                                                                                                 |
|----------------------------------------------------------------------------------------------------------------|:----:|-----------------------------------------------------------------------------------------------------------------------------|
| [Beacon](https://developer.mozilla.org/en-US/docs/Web/API/Beacon_API)                                          |  11  | Sets up a quick post call to a backend server from a webpage.                                                               |
| [Bluetooth](https://developer.mozilla.org/en-US/docs/Web/API/Bluetooth)                                        |  06  | Allows for a webpage to connect to a Bluetooth peripheral.                                                                  |
| [Broadcast Channel](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API)                    |  11  | Allows for a broadcast mechanism between open pages on the same domain.                                                     |
| [C++ Future](https://en.cppreference.com/cpp/thread/future)                                                    |  01  | To get a general reference design for designing the `CFuture` object.                                                       |
| [CookieStore](https://developer.mozilla.org/en-US/docs/Web/API/CookieStore)                                    |  14  | The modern way webpages can store cookies vs. the old way on a host computer.                                                                                                                       |
| [Console](https://developer.mozilla.org/en-US/docs/Web/API/console)                                            |  08  | Everything you wanted to know on how to log data within a webpage.                                                                                                                         |
| [EventSource](https://developer.mozilla.org/en-US/docs/Web/API/EventSource)                                    | CORE | Provides a webpage the ability to receive a stream of Server-Sent Events.                                                                                                                     |
| [EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget)                                    |  11  | Represents how webpages communicate events and provides mechanism for the webpage to register for them.                                                                                                                         |
| [Fetch](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)                                            |  13  | Provides a webpage the ability to perform REST API transactions with a server.                                                                                                                         |
| [File System](https://developer.mozilla.org/en-US/docs/Web/API/File_System_API)                                |  11  | Provides the objects necessary to work with data from the host file system of the loaded webpage.                                                                                                                         |
| [Geolocation](https://developer.mozilla.org/en-US/docs/Web/API/Geolocation_API)                                |  06  | Provides a webpage with access to WGS84 coordinates to know where it is located in the world.                                                                                                                         |
| [Input File](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/input/file)                  |  05  | Demonstrates how a webpage can open and upload a file for processing.                                                                                                                         |
| [localStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage)                           |  14  | Provides a webpage with a string key / value storage mechanism that lasts after page closes and is opened in a new session. |
| [Location](https://developer.mozilla.org/en-US/docs/Web/API/Location)                                          |  06  | Provides a webpage with basic information of their network location.                                                        |
| [HTMLAnchorElement Download](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement/download)      |  05  | The fallback way of saving data from a webpage.                                                                             |
| [Navigator](https://developer.mozilla.org/en-US/docs/Web/API/Navigator)                                        |  13  | Attaches a bunch of different APIs that require detection as they may not be available in different web browsers.           |
| [Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)            |  01  | A way of dividing up the webpage main thread with different work elements.                                                  |
| [Rust Result](https://doc.rust-lang.org/std/result/)                                                           | CORE | A concept replicated in the `codemelted.js` module as `try-catch` is horrible construct.                                    |
| [Save a File](https://web.dev/articles/files/save-a-file)                                                      |  05  | Demonstrates how a webpage can save a file to disk using old and new techniques.                                            |
| [Screen](https://developer.mozilla.org/en-US/docs/Web/API/Screen)                                              |  15  | Queryable elements about a device screen for a webpage to access.                                                           |
| [sessionStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage)                       |  14  | A key / value string storage active for the webpage session. Cleared when page is closed.                                   |
| [USB](https://developer.mozilla.org/en-US/docs/Web/API/USB)                                                    |  06  | Provides a webpage access to USB hardware peripherals attached to a computer.                                               |
| [Using Custom Elements](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements) |  15  | Why use a whole framework for UI elements on a webpage. Make your own the way you want.                                     |
| [Web Serial](https://developer.mozilla.org/en-US/docs/Web/API/Web_Serial_API)                                  |  06  | Provides a webpage access to RS-232 hardware peripherals attached to a computer.                                            |
| [Web MIDI](https://developer.mozilla.org/en-US/docs/Web/API/Web_MIDI_API)                                      |  06  | Provides a webpage access to MIDI attached devices to a computer.                                                           |
| [WebSocket](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket)                                        |  11  | The web standard for TCP bidirectional communication between a client / server.                                             |
| [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)                                          |  11  | Mechanism to get real time audio / video communication between webpage peers.                                               |
| [WebTransport](https://developer.mozilla.org/en-US/docs/Web/API/WebTransport)                                  |  11  | The web standard for UDP socket communication between different web clients.                                                |
| [Window](https://developer.mozilla.org/en-US/docs/Web/API/Window)                                              | CORE | Represents the `globalThis` within the Browser runtime.                                                                     |
| [Worker](https://developer.mozilla.org/en-US/docs/Web/API/Worker)                                              |  01  | Providing a way to spawn background thread processing for a webpage.                                                        |
