// @ts-check
// ============================================================================
/**
 * @file Implements the codemelted CLI native command.
 * @copyright © 2025 - 2026 Mark Shaffer. All Rights Reserved.
 * @license MIT
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the 'Software'),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge,  publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN  THE SOFTWARE.
 */
// ============================================================================
// [IMPORTS] ==================================================================
// ============================================================================

import {
ABOUT_MODULE,
  json_has_key
} from "./codemelted.js";

// ============================================================================
// [DATA DEFINITION] ==========================================================
// ============================================================================

// Holds the help output for the native command.
const HELP_OUTPUT = `
-------------------------------------------------------------------------------
*        codemelted native CLI - ${ABOUT_MODULE.version}           *
-------------------------------------------------------------------------------
ABOUT:

AUTHOR: ${ABOUT_MODULE.author}

SYNTAX: codemelted [action] [options]

  --npu-compute formula arg1 [arg2 ...] : Executes the specified formula and
                                          displays the result.

  --help : Displays command help to STDOUT


`

// Map of the helper functions to the supported actions.
const ARGS_MAP = Object.freeze({
  "--help":  cli_help
});

// ============================================================================
// [HELPER FUNCTIONS] =========================================================
// ============================================================================

/**
 * Displays the help system.
 * @param _args Not used
 */
function cli_help(_args: string[]) {
  console.log(HELP_OUTPUT);
}

// ============================================================================
// [MAIN ENTRY POINT] =========================================================
// ============================================================================

/**
 * Main entry point for the script.
 */
function main(): void {
  try {
    // Parse the arguments and then
    const args = Deno.args;
    if (args.length === 0) {
      throw "codemelted CLI expects parameters. Execute " +
        "'codemelted --help' for syntax of command.";
    }
    const action = args[0];
    if (!json_has_key({obj: ARGS_MAP, key: action})) {
      throw `codemelted received invalid action '${action}'`;
    }

    // @ts-ignore Dictionary will have functions mapped to the action key.
    ARGS_MAP[action](args);
    Deno.exit(0);
  } catch (err) {
    console.log(err);
    Deno.exit(1);
  }
}
main();