// RUN: rm -rf %t
// RUN: sed -e "s:INPUT_DIR:%S/Inputs:g" -e "s:OUT_DIR:%S/Inputs:g" %S/Inputs/vfsoverlay.yaml > %t.yaml
// REQUIRES: shell

// RUN: %clang_cc1 -Werror -fmodules -fmodules-cache-path=%t -ivfsoverlay %t.yaml -F %S/Inputs -fsyntax-only %s -verify
// RUN: %clang_cc1 -Werror -fmodules -fmodules-cache-path=%t -F %S/Inputs -fsyntax-only %s -verify
// expected-no-diagnostics
@import Foo;
