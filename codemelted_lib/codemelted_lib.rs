/*
===============================================================================
MIT License

© 2025-2026 Mark Shaffer. All Rights Reserved.

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
===============================================================================
*/

use std::ffi::CString;
use std::os::raw::c_char;

// ============================================================================
// [MACRO DEFINITIONS] ========================================================
// ============================================================================

/// Provides the ability to export the static library API utilizing functions
/// with and without a return type.
macro_rules! export_codemelted_lib {
  ($(
    pub extern "C" fn $name:ident ( $($arg:tt)* ) $(-> $ret:ty)? $body:block
  )*) => {
    $(
      #[unsafe(no_mangle)]
      pub extern "C" fn $name ( $($arg)* ) $(-> $ret)? $body
    )*
  };
}

// ============================================================================
// [STATIC LIB API] ===========================================================
// ============================================================================

export_codemelted_lib! {

  pub extern "C" fn codemelted_lib_api_error() -> *mut c_char {
    // Example code, will change to fully utilize API
    let my_string = format!("Hello from Rust! The time is sweet.");
    match CString::new(my_string) {
      Ok(c_str) => c_str.into_raw(), // Relinquishes ownership to C
      Err(_) => std::ptr::null_mut(),  // Handle interior null byte error
    }
  }

  pub extern "C" fn codemelted_lib_free(ptr: *mut c_char) {
    if ptr.is_null() {
      return;
    }
    unsafe {
      // Re-take ownership so Rust's Drop checker deallocates it
      let _ = CString::from_raw(ptr);
    }
  }

  pub extern "C" fn codemelted_lib_query(_request: i8) -> *mut c_char {
    // Example code, will change to fully utilize API
    let my_string = format!("Hello from Rust! The time is sweet.");
    match CString::new(my_string) {
      Ok(c_str) => c_str.into_raw(), // Relinquishes ownership to C
      Err(_) => std::ptr::null_mut(),  // Handle interior null byte error
    }
  }

  pub extern "C" fn codemelted_lib_open(_data: *const c_char) -> i64 {
    -1
  }

  pub extern "C" fn codemelted_lib_get_message(_handle: i64) -> *mut c_char {
    // Example code, will change to fully utilize API
    let my_string = format!("Hello from Rust! The time is sweet.");
    match CString::new(my_string) {
      Ok(c_str) => c_str.into_raw(), // Relinquishes ownership to C
      Err(_) => std::ptr::null_mut(),  // Handle interior null byte error
    }
  }

  pub extern "C" fn codemelted_lib_post_message(
      _handle: i64,
      _data: *mut c_char
  ) -> bool {
    false
  }

  pub extern "C" fn codemelted_lib_terminate(_handle: i64) -> bool {
    false
  }
}