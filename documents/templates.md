<center>
  <img style="width: px; "src="https://codemelted.com/assets/favicon/codemelted-js/android-chrome-192x192.png" />
  <h1>CodeMeltedDEV Templates</h1>
  <button style="cursor:pointer;" onclick="window.print();">Print</button>
</center>

This is a collection of templates for performing software engineering tasks and beginning the coding effort. The templates have descriptions within to aide in getting started with the task at hand. The templates can also serve in feeding AI agents to control what and how they build / validate a solution.

**Table of Contents**

- [CODE](#code)
  - [HTML File](#html-file)
  - [PowerShell Script](#powershell-script)
  - [Shell Script](#shell-script)
  - [JavaScript / TypeScript Module](#javascript--typescript-module)
- [MARKDOWN](#markdown)
  - [Object Oriented Analysis and Design (OOAD)](#object-oriented-analysis-and-design-ooad)
  - [Process](#process)
  - [Project README](#project-readme)
  - [Test Case](#test-case)

# CODE

## HTML File

Identifies all the OpenGraph and Twitter card tags in order for sharing a page to preview properly within those apps.

```html
<!DOCTYPE html>
<!--
FILE: Tell me about the file and why it exists for this project
COPYRIGHT: Any copyright information or set / delete.
LICENSE: what license or set N/A or delete.
-->
<html lang="en"><head>
  <!-- Set the title of the page-->
  <title>TITLE</title>
  <meta property="og:title" content="TITLE">
  <meta name="twitter:title" content="TITLE">
  <!-- Set who authored the page-->
  <meta name="author" content="AUTHOR NAME">
  <meta name="twitter:site" content="@yourusername OR DELETE">
  <!-- Provide a description for your page-->
  <meta name="description" content="DESCRIPTION">
  <meta property="og:description" content="DESCRIPTION">
  <meta name="twitter:description" content="DESCRIPTION">
  <!-- Set Your Website Reference-->
  <meta property="og:url" content="YOUR WEBSITE REFERENCE">
  <meta name="twitter:image" content="https://yourwebsite.com">
  <meta property="og:image" content="https://yourwebsite.com">
  <!-- Set keywords in CSV format-->
  <meta name="keywords" content="KEYWORDS">
  <!-- Image Preview For Website-->
  <meta property="og:image" content="https://example.com" />
  <meta name="twitter:image" content="https://yoursite.com/image.png" />
  <!-- Set your Favicon -->
  <link rel="icon" type="image/x-icon" href="FAVICON_LOCATION.ico">
  <!-- Leave these alone -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta property="og:type" content="website" />
  <meta charset="UTF-8">
  <!-- Determine what you are doing below for loading resources-->
  <link rel="stylesheet" href="STYLE_SHEET.css">
  <style>
    /* Define some styles if not externally loaded */
  </style>

  <script src="LOAD A SCRIPT"></script>
  <script>
    // Define script behavior
  </script>
</head><body>
  <!-- Build the UI -->
  <script>
    // Define script behavior
  </script>
</body></html>
```

## PowerShell Script

```PowerShell
#!/usr/bin/pwsh
# =============================================================================
$ABOUT_SCRIPT = @{
author = "mark.shaffer@codemelted.com / dev.codemelted.com"
copyright = "© 2025 - 2026 Mark Shaffer. All Rights Reserved."
license = @"
MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
IN THE SOFTWARE.
"@
version = "vXX.Y.Z [Last Updated 2026-MMM-DD]"
history = @"
- vXX.Y.Z [2026-MMM-DD]: What was modified.
"@
todos = @"
1. Things to do.
"@
}
# =============================================================================
function main {
  # You can also break up the script with more functions making it very
  # versatile for writing complex powershell scripts for you devops needs.
  function sub_task {
    # do sub_task work.
  }

  # Start defining the main of the script
  [string]$action = $args[0]
}
main @args

```

## Shell Script

```sh
#!/usr/bin/env bash
# =============================================================================
# AUTHOR: email / website
# COPYRIGHT: © 2025 - 2026 NAME. All Rights Reserved.
# LICENSE: MIT License
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge,  publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# HISTORY:
# - vXX.Y.Z [Last Modified YYYY-MMM-DD]:
# TODOS:
# 1. What to do.
# =============================================================================
function main {
  local VERSION = "vXX.Y.Z [Last Modified YYYY-MMM-DD]"
  # You can also break up the script with more functions making it very
  # versatile for writing complex BASH scripts for you UNIX / LINUX system.
  function sub_task {
    # See sub_task
  }

  # -------------------------------------------------------------------------
  # [MAIN] ------------------------------------------------------------------
  # -------------------------------------------------------------------------
  $action = $1
  if [ "$action" == "help" ]; then
    # Do something with the action.
    sub_task
  fi
}
main $@
```

## JavaScript / TypeScript Module

```javascript
// @ts-check
// ============================================================================
export const ABOUT_MODULE = Object.freeze({
author: "EMAIL / WEBSITE",
copyright: "© 2025 - 2026 AUTHOR. All Rights Reserved.",
license: `MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge,  publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
`,
version: "v26.0.0 [Last Updated 2026-MMM-DD]",
history:`
- vXX.Y.Z [2026-MMM-DD]:
`,
todos:`
1. Identify something needing doing within the file.
website: "WEBSITE REFERENCE",
`
});
// =============================================================================
/**
 * Introduce the module.
 * @module starter_module
 * @see https://reference.com
 */
// =============================================================================
// [MODULE CORE] ===============================================================
// =============================================================================

// Put your module privates here

// =============================================================================
// [PUBLIC API] ================================================================
// =============================================================================

// Put exports below here.
```

# MARKDOWN

## Object Oriented Analysis and Design (OOAD)

```markdown
<center>
  <mark>Company Logo If Available</mark>
  <h1>ID: Title</h1>
</center>

**Table of Contents**

- [INTRODUCTION](#introduction)
  - [Purpose](#purpose)
  - [Scope](#scope)
  - [Terms](#terms)
  - [References](#references)
- [FUNCTIONAL ANALYSIS](#functional-analysis)
  - [UC-1: Function Feature](#uc-1-function-feature)
- [NON-FUNCTIONAL ANALYSIS](#non-functional-analysis)
  - [Useability](#useability)
  - [Reliability](#reliability)
  - [Performance](#performance)
  - [Supportability](#supportability)
  - [Design Constraints](#design-constraints)
  - [Documentation](#documentation)
  - [Purchased Components](#purchased-components)
  - [Licensing and Security](#licensing-and-security)
  - [Legal, Copyright and Other Notices](#legal-copyright-and-other-notices)
  - [Applicable Standards](#applicable-standards)
  - [Internationalization and Localization](#internationalization-and-localization)
  - [Physical Deliverables](#physical-deliverables)
  - [Installation and Deployment](#installation-and-deployment)
- [DESIGN ANALYSIS](#design-analysis)
  - [Communication Interfaces](#communication-interfaces)
  - [Hardware Interfaces](#hardware-interfaces)
  - [Software Interfaces](#software-interfaces)
  - [User Interfaces](#user-interfaces)
- [TRACEABILITY](#traceability)

# INTRODUCTION

## Purpose

<mark>The purpose outlines the reason for creating the process. It answers the question “why is this being done?” and provides direction, motivation, and clarity for all stakeholders involved. A well-defined purpose sets the overarching goals and desired outcomes, ensuring that everyone understands the intent behind the document.</mark>

## Scope

<mark>The scope specifies the boundaries, extent, and limitations of the process. It answers “what is included and what is excluded?” and defines the deliverables, tasks, responsibilities, and areas covered. Scope ensures that the project remains focused and manageable, preventing unnecessary expansion or deviation from the original goals.</mark>

## Terms

<mark>Breakdown of acronyms and definitions</mark>

## References

<mark>Any outside references that inform this breakdown.</mark>

# FUNCTIONAL ANALYSIS

<mark>An introductory use case model or other architecture diagram that may aid in visualizing the different requirements categories below.</mark>

<mark>Add a new model for each complex Function Feature that may need further pictorial and feature breakdown until it is at its lowest testable functional description.</mark>

## UC-1: Function Feature

<mark>IF Describing via Behavioral Driven Development (BDD) User Story Format</mark>

- **Description:** As a [who], I want [what], so that [why].
- **Scenario 1:** Describe the scenario
    - *Given:* Sets up the initial context, state, or preconditions of the system before any action happens.
    - *When:* Describes the specific action, event, or trigger performed by the user or system.
    - *Then:* Specifies the expected observable outcome or response after the action.
    - *And:* Extends any of the previous statements to add positive or multiple conditions, actions, or results.
    - *But:* Adds a negative condition, exception, or contrasting limitation to the preceding steps
- **Scenario 2:** Describe the scenario
    - *Given:* Sets up the initial context, state, or preconditions of the system before any action happens.
    - *When:* Describes the specific action, event, or trigger performed by the user or system.
    - *Then:* Specifies the expected observable outcome or response after the action.
    - *And:* Extends any of the previous statements to add positive or multiple conditions, actions, or results.
    - *But:* Adds a negative condition, exception, or contrasting limitation to the preceding steps

<mark>IF Describing via Use Case Scenario Format:</mark>

- **Description:** A description of what this use case is all about.
- **Actors:** Who / what is triggering this use case.
- **Trigger:** The ideal setup necessary for the use case scenario to run.
- **Main Success Scenario:** The primary, ideal sequence of steps where everything goes right and the user achieves their goal without errors
- **Alternate Flows:** Different paths or optional behaviors that still lead to success (e.g., a customer pays with PayPal instead of a credit card)
- **Exception Flows:** Paths handling errors, invalid inputs, or system failures (e.g., a declined credit card or an out-of-stock item)
- **Post-Condition:** The expectation when the main success scenario completes.

<mark>IF Describing via EARS Function Requirements Format:</mark>

- Ubiquitous (Always Active): The <system name> shall <system response> (e.g., The mobile phone shall have a mass of less than 150 grams
- State-Driven (Active During a State): While <state>, the <system name> shall <system response> (e.g., While the vehicle is in reverse, the system shall display the rear camera feed)
- Event-Driven (Triggered by an Event): When <trigger>, the <system name> shall <system response> (e.g., When the user presses the power button, the device shall turn on)
- Optional Features: Where <feature is present>, the <system name> shall <system response> (e.g., Where the navigation package is installed, the system shall display the map)
- Unwanted Behavior: If <unwanted trigger>, then the <system name> shall <system response> (e.g., If the password is entered incorrectly three times, then the system shall lock the account)

# NON-FUNCTIONAL ANALYSIS

## Useability

<mark>State the requirements that affect usability.</mark>

## Reliability

<mark>State the requirements for reliability</mark>

## Performance

<mark>State the performance characteristics of the system, expressed quantitatively where possible and related to use cases where applicable.</mark>

## Supportability

<mark>State the requirements that enhance system supportability or maintainability</mark>

## Design Constraints

<mark>State the design or development constraints imposed on the system or development process.</mark>

## Documentation

<mark>State the requirements or user and/or administrator documentation.</mark>

## Purchased Components

<mark>List the purchased components used with the system, licensing or usage restrictions, and compatibility/interoperability requirements</mark>

## Licensing and Security

<mark>Describe the licensing and usage enforcement requirements or other restrictions for usage, security, and accessability</mark>

## Legal, Copyright and Other Notices

<mark>Describe the licensing and usage enforcement requirements or other restrictions for usage, security, and accessibility.

## Applicable Standards

<mark>Reference any applicable standards and the specific sections of any such standards that apply.</mark>

## Internationalization and Localization

<mark>State any requirements for support and application of different user languages and dialects</mark>

## Physical Deliverables

<mark>Define any specific deliverable artifacts required by the user or customer</mark>

## Installation and Deployment

<mark>Describe any specific deliverable artifacts required by the user or customer</mark>

# DESIGN ANALYSIS

<mark>Define the interfaces that must be supported by the application. Utilize necessary UML and modeling definitions to reflect it.</mark>

## Communication Interfaces

## Hardware Interfaces

## Software Interfaces

## User Interfaces

# TRACEABILITY

<mark>Fill out table of the different elements showing how they relate.</mark>

| REQ # | DESIGN # |
| ----- | -------- |
```

## Process

```markdown
<center>
  <mark>Company Logo If Available</mark>
  <h1>ID: Title</h1>
</center>

**Table of Contents**

- [INTRODUCTION](#introduction)
  - [Purpose](#purpose)
  - [Scope](#scope)
  - [Terms](#terms)
  - [References](#references)
- [PROCESS](#process)
  - [Trigger](#trigger)
  - [Roles](#roles)
  - [Limitations](#limitations)
  - [Inputs](#inputs)
  - [Deliverables](#deliverables)
  - [Execution](#execution)

# INTRODUCTION

## Purpose

<mark>The purpose outlines the reason for creating the process. It answers the question “why is this being done?” and provides direction, motivation, and clarity for all stakeholders involved. A well-defined purpose sets the overarching goals and desired outcomes, ensuring that everyone understands the intent behind the document.</mark>

## Scope

<mark>The scope specifies the boundaries, extent, and limitations of the process. It answers “what is included and what is excluded?” and defines the deliverables, tasks, responsibilities, and areas covered. Scope ensures that the project remains focused and manageable, preventing unnecessary expansion or deviation from the original goals.</mark>

## Terms

<mark>Breakdown of acronyms and definitions</mark>

## References

<mark>Any outside references that inform this breakdown.</mark>

# PROCESS

## Trigger

<mark>What kicks off this process</mark>

## Roles

<mark>Identify the participants within this process and what they perform</mark>

## Limitations

<mark>Identify any limitations to this process not being successful.</mark>

## Inputs

<mark>Identify the inputs to this process to allow it to function.</mark>

## Deliverables

<mark>Identify the deliverable artifacts when this process is completed.</mark>

## Execution

<mark>The data flow of how this process works</mark><br>
<mark>The detailed procedure steps to fulfill the overall process.</mark>

**Procedure:**

1. The thing
2. The other thing
```

## Project README

```markdown
<center>
  <mark>Project logo</mark>
  <h1>Project Title</h1>
</center>

<mark>Introduce the project and why it is important</mark>

**Table of Contents**

- [FEATURES](#features)
- [GETTING STARTED](#getting-started)
- [USAGE](#usage)
- [LICENSE](#license)

# FEATURES

<mark>Identify the important aspects of the project and what makes it cool.</mark>

# GETTING STARTED

<mark>Identify the steps necessary to be successful with the repo.</mark>

# USAGE

<mark>Identify how to use the repo once getting started is done.</mark>

# LICENSE

<mark>Identify the license that governs this repo.</mark>
```

## Test Case

```markdown
<center>
  <mark>Company Logo If Available</mark>
  <h1>ID: Title</h1>
</center>

**Table of Contents**

- [INTRODUCTION](#introduction)
  - [Purpose](#purpose)
  - [Scope](#scope)
  - [Terms](#terms)
  - [References](#references)
- [APPROACH](#approach)
  - [Description](#description)
  - [Objectives](#objectives)
- [SETUP](#setup)
  - [Pre-Conditions](#pre-conditions)
  - [Test Data](#test-data)
  - [Post-Conditions](#post-conditions)
- [PROCEDURE](#procedure)

# INTRODUCTION

## Purpose

<mark>The purpose outlines the reason for creating the process. It answers the question “why is this being done?” and provides direction, motivation, and clarity for all stakeholders involved. A well-defined purpose sets the overarching goals and desired outcomes, ensuring that everyone understands the intent behind the document.</mark>

## Scope

<mark>The scope specifies the boundaries, extent, and limitations of the process. It answers “what is included and what is excluded?” and defines the deliverables, tasks, responsibilities, and areas covered. Scope ensures that the project remains focused and manageable, preventing unnecessary expansion or deviation from the original goals.</mark>

## Terms

<mark>Breakdown of acronyms and definitions</mark>

## References

<mark>Any outside references that inform this breakdown.</mark>

# APPROACH

## Description

<mark>The general description for the overall approach to this test case.</mark>

## Objectives

<mark>The specific objectives to be met during testing usually lining up to requirements.</mark>

# SETUP

## Pre-Conditions

<mark>The required system state or setup before starting.</mark>

## Test Data

<mark>Specific inputs, usernames, or files needed.</mark>

## Post-Conditions

<mark>The final state of the system when PROCEDURE is completed</mark>

# PROCEDURE

<mark>Step: Clear, numbered actions to perform.</mark>
<mark>Action: The action to perform</mark>
<mark>Expected Result: How the system should behave.</mark>
<mark>Actual Result: What the system actually did (filled during testing).</mark>
<mark>Status: Pass, Fail, or Blocked</mark>

| Step | Action | Expected Result | Actual Result | Status |
| ---- | ------ | --------------- | ------------- | :----: |
```