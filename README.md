# SRFI nnn: R6RS-R7RS compatibility libraries

by Firstname Lastname, Another Person, Third Person

# Status

Early Draft

# Abstract

The R6RS and R7RS standard libraries have a few discrepancies in
naming and argument lists for similar procedures. This SRFI supplies a
R6RS shim for R7RS, and a R7RS shim for R6RS, so that portable code
may be written.

# Issues

# Rationale

## Issues that cannot be resolved by a library

### Vector literals

R6RS vector literals need to be quoted: `'#(1 2 3)` is valid whereas
`#(1 2 3)` is a syntax error.

R7RS vector literals are self-quoting: `'#(1 2 3)` and `#(1 2 3)` are
equivalent.

Both have R6RS and R7RS have a standard procedure `(vector ...)` to
make a vector containing the given elements.

### Bytevector literals

The read syntax for bytevector literals is `#vu(...)` in R6RS and
`#u8(...)` in R7RS. R7RS has a standard procedure `(bytevector ...)`
to make a bytevector containing the given elements.

### Raised by who

The R6RS `error` procedure takes a _who_ argument that optionally says
which bit of code the error came from. If _who_ is supplied and not
`#f`, a compound condition is created where `&who` is one of the
simple conditions. R7RS errors have no equivalent.

# Specification

## Make a bytevector

6: N/A

7: (`bytevector` ...)

## Read binary

### Read one byte

6: (`get-u8` _port_)

7: (`read-u8` [_port_])

### Read some bytes

6: (`get-bytevector-some` _port_)

7: N/A

### Read all bytes

6: (`get-bytevector-all` _port_)

7: N/A

### Read up to n bytes

6: (`get-bytevector-n` _port_ _count_)

7: (`read-bytevector` _count_ [_port_])

### Read up to n bytes (destructive)

6: (`get-bytevector-n!` _port_ _bytevector_ _start_ _count_)

7: (`read-bytevector!` _bytevector_ [_port_ _start_ end])

## Read text

### Read one char

6: (`get-char` _port_)

7: (`read-char` [_port_])

### Read some chars

6: N/A

7: N/A

### Read all chars

6: (`get-string-all` _port_)

7: N/A

### Read up to n chars

6: (`get-string-n` _port_ _count_)

7: (`read-string` _count_ [_port_])

### Read up to n chars (destructive)

6: (`get-string-n!` _port_ _string_ _start_ _count_)

7: N/A

### Read one line of text

6: (`get-line` _port_)

7: (`read-line` [_port_])

## Write binary

### Write one byte

6: (`put-u8` _port_ _byte_)

7: (`write-u8` _byte_ [_port_])

### Write exactly n bytes

6: (`put-bytevector` _port_ _bytevector_ [_start_ _count_])

7: (`write-bytevector` _bytevector_ [_port_ _start_ _end_])

## Write text

### Write one char

6: (`put-char` _port_ _char_)

7: (`write-char` _char_ [_port_])

### Write exactly n chars

6: (`put-string` _port_ _string_ [_start_ _count_])

7: (`write-string` _string_ [_port_ _start_ _end_])

### Write one line of text

6: N/A

7: N/A

# Implementation

Attached.

# Acknowledgements

??? Give credits where credits is due.

# References

??? Optional section with links to web pages, books and papers that
helped design the SRFI.

# Copyright

Copyright (C) Firstname Lastname (20XY).

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
