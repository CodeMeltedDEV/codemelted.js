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
history = @"
- [2026-SEP-30]: Added make_cli and make_rust options to the script.
- [2026-SEP-19]: Initial release of the build script to support the
  new codemelted.js project.
"@
todos = @"
1. Add a setup function to download and install all necessary items for the
   project.
2. Add a help function to display information about how to utilize this script
   for builds of this project.
"@
}
# =============================================================================
function main {
  # Constants
  [string]$GEN_HTML_PERL_SCRIPT = "c:/ProgramData/chocolatey/lib/lcov/" +
    "tools/bin/genhtml"

  # ---------------------------------------------------------------------------
  # [Helper Functions] --------------------------------------------------------
  # ---------------------------------------------------------------------------
  function help {
    Write-Host $ABOUT_SCRIPT.author
  }

  function message([string]$msg) {
    Write-Host
    Write-Host "MESSAGE: $msg"
    Write-Host
  }

  # ---------------------------------------------------------------------------
  # [MAKE FUNCTIONS] ----------------------------------------------------------
  # ---------------------------------------------------------------------------

  function make_cli {
    # Build the executable CLI
    Remove-Item -Path $PSScriptRoot/dist -Force -Recurse `
      -ErrorAction SilentlyContinue

    deno compile --target aarch64-apple-darwin `
      --include lib --output dist/mac/codemelted codemelted-cli.ts
    if ($LASTEXITCODE -ne 0) {
      throw "make_js - 'deno compile mac' failed."
    }

    deno compile --target x86_64-unknown-linux-gnu `
      --include lib --output dist/linux/codemelted codemelted-cli.ts
    if ($LASTEXITCODE -ne 0) {
      throw "make_js - 'deno compile linux' failed."
    }

    deno compile --target x86_64-pc-windows-msvc `
      --include lib --output dist/windows/codemelted.exe codemelted-cli.ts
    if ($LASTEXITCODE -ne 0) {
      throw "make_js - 'deno compile windows' failed."
    }
  }

  function make_js {
    message "Now building codemelted.js module."

    # Build the documentation
    Remove-Item -Path $PSScriptRoot/docs -Force -Recurse `
      -ErrorAction SilentlyContinue
    typedoc --skipErrorChecking
    if ($LASTEXITCODE -ne 0) {
      throw "make_js - 'typedoc --skipErrorChecking' failed."
    }

    # Finish up the the prepping of the documentation
    Copy-Item $PSScriptRoot/favicon.ico $PSScriptRoot/docs -Force `
      -ErrorAction Stop
    Copy-Item $PSScriptRoot/favicon $PSScriptRoot/docs -Force -Recurse `
      -ErrorAction Stop
    "js.codemelted.com" | Out-File -FilePath $PSScriptRoot/docs/CNAME `
      -NoNewLine
    message "codemelted.js module build completed."
  }

  function make_rust {
    message "Now building the codemelted_lib static library."
    Set-Location $PSScriptRoot/codemelted_lib
    # TODO: Will need to add additional targets when the time comes
    cargo build --release
    if ($LASTEXITCODE -ne 0) {
      throw "make_rust - 'cargo build --release' failed"
    }
    # TODO: Will need to copy all those additional target compiles
    #       to the lib folder.
    Set-Location $PSScriptRoot
    message "codemelted_lib static library build completed."
  }

  function make([string]$option) {
    switch ($option) {
      "cli" { make_cli }
      "js" { make_js }
      "rust" { make_rust }
      "" {
        make_js
        make_rust
        make_cli
      }
      default { throw "make - invalid parameter specified" }
    }
  }

  # ---------------------------------------------------------------------------
  # [TEST FUNCTIONS] ----------------------------------------------------------
  # ---------------------------------------------------------------------------

  function lcov_to_html() {
    if ($IsLinux -or $IsMacOS) {
      genhtml -o coverage --ignore-errors empty,unused,inconsistent,inconsistent,range `
        --dark-mode coverage/lcov.info
      if ($LASTEXITCODE -ne 0) {
        throw "lcov_to_html - no coverage file produced"
      }
    } else {
      $exists = Test-Path -Path $GEN_HTML_PERL_SCRIPT -PathType Leaf
      if ($exists) {
        perl $GEN_HTML_PERL_SCRIPT -o coverage coverage/lcov.info
        if ($LASTEXITCODE -ne 0) {
          throw "lcov_to_html - no coverage file produced"
        }
      } else {
        throw "lcov_to_html - genhtml not installed for windows. Run " +
          "'choco install lcov' for pwsh terminal as Admin to install it."
      }
    }
  }

  function test_js {
    message "Now testing codemelted.js Module"

    # Get items into the proper location for testing.
    Copy-Item codemelted.js $PSScriptRoot/tests -Force -ErrorAction Stop
    New-Item -ItemType Directory $PSScriptRoot/docs -ErrorAction Ignore
    Set-Location $PSScriptRoot/tests

    message "Testing bun runtime."
    bun test --coverage --coverage-reporter=lcov bun.test.ts
    if ($LASTEXITCODE -ne 0) {
      throw "test_js 'bun test' failed."
    } else {
      lcov_to_html
      Move-Item -Path coverage -Destination $PSScriptRoot/docs/coverage-bun `
        -Force -ErrorAction Stop
      message "bun testing completed."
    }

    # Run the deno tests
    message "Testing deno runtime."
    deno test --allow-env --allow-net --allow-read --allow-sys --allow-write `
      --coverage=coverage --no-config deno.test.ts
    if ($LASTEXITCODE -ne 0) {
      throw "test_js - 'deno test' failed."
    } else {
      deno coverage --lcov > coverage/lcov.info
      lcov_to_html
      Move-Item -Path coverage -Destination $PSScriptRoot/docs/coverage-deno `
        -Force -ErrorAction Stop
      message "deno testing completed."
    }

    # Do node tests
    message "Testing node runtime."
    New-Item -ItemType Directory coverage
    node --test ./node.test.js
    if ($LASTEXITCODE -ne 0) {
      throw "test_js - 'node --test' failed."
    } else {
      node --experimental-test-coverage --test-reporter=lcov `
        --test-reporter-destination=coverage/lcov.info ./node.test.js
      lcov_to_html
      Move-Item -Path coverage -Destination $PSScriptRoot/docs/coverage-node `
        -Force -ErrorAction Stop
      message "node testing completed."
    }

    # Setup to do Browser Runtime Testing
    New-Item -ItemType Directory $PSScriptRoot/docs/coverage-browser `
      -Force -ErrorAction Stop
    Copy-Item coverage-browser.html $PSScriptRoot/docs/coverage-browser/index.html `
      -Force -ErrorAction Stop
    Copy-Item browser.test.js $PSScriptRoot/docs/coverage-browser -Force `
      -ErrorAction Stop
    Copy-Item worker.test.js $PSScriptRoot/docs/coverage-browser -Force `
      -ErrorAction Stop
    Copy-Item codemelted*.js $PSScriptRoot/docs/coverage-browser -Force `
      -ErrorAction Stop

    Set-Location $PSScriptRoot
    message "codemelted.js module V8 runtime testing completed. " +
      "Execute python3 -m http.server to complete browser testing " +
      "and validation of the js.codemelted.com domain before pushed."
  }

  function test_rust {
    message "Now testing the codemelted_lib static library."
    Set-Location $PSScriptRoot/codemelted_lib
    cargo test
    if ($LASTEXITCODE -ne 0) {
      throw "test_rust - 'cargo test' failed"
    }
    Set-Location $PSScriptRoot
    message "codemelted_lib testing completed."
  }

  function test([string]$option) {
    switch ($option) {
      "js" { test_js }
      "rust" { test_rust }
      "" {
        test_js
        test_rust
      }
      default { throw "test - invalid parameter specified" }
    }
  }

  # ---------------------------------------------------------------------------
  # [MAIN ENTRY] --------------------------------------------------------------
  # ---------------------------------------------------------------------------
  try {
    [string]$action = $args[0] ?? ""
    [string]$option = $args[1] ?? ""
    switch ($action) {
      "--make" { make $option }
      "--test" { test $option }
      default {
        throw "build.ps1 - invalid option specified."
      }
    }
  } catch {
    Write-Host "ERROR: $($_.Exception.Message)" -ForegroundColor Red
    Set-Location $PSScriptRoot
    exit 1
  }
}
main @args
