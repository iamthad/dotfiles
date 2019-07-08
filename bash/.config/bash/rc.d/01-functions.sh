# shellcheck shell=bash

# hash, turning on hashing temporarily if needed
always_hash()
{
    # from the bash documentation for ‘local’: If *name* is ‘-’, the set of
    # shell options is made local to the function in which local is invoked:
    # shell options changed using the set builtin inside the function are
    # restored to their original values when the function returns.
    local -
    set -h
    hash "$@"
}