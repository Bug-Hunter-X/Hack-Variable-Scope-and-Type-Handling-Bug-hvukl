# Hack Variable Scope and Type Handling Bug

This repository demonstrates a subtle bug in Hack code related to variable scope and type handling.  The bug occurs due to an inconsistent use of the dollar sign prefix for variables within different function scopes.  This can result in unexpected behavior or errors.  The solution illustrates the correct approach for handling variables across different scopes and maintaining type safety.

## Bug Description

The initial `bug.hack` file contains a function `bar` that declares a variable `$x`. It then calls the function `foo` passing `$x` as an argument. `foo` expects an integer. The problem lies in the way `$x` is handled. In `bar`, `$x` is treated correctly as a variable using the $ prefix. However, within the `foo` function call it's being passed as if it were a constant or a global variable without the dollar sign.  This leads to either a runtime error, unexpected results, or compiler warnings depending on the Hack version.  The fix involves proper handling of variable scope.