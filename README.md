# SRFI nnn: Title

by Firstname Lastname, Another Person, Third Person

# Status

Early Draft

# Abstract

??? abstract, preferably shorter than 200 words. Please outline the
need for, and design of, the proposal.

# Issues

??? Optional section that may point out things to be resolved. This
will not appear in the final SRFI.

# Rationale

??? detailed rationale. This should be 200-500 words long. Please
explain why the proposal should be incorporated as a standard feature
in Scheme implementations. List related standards and SRFIs, including
dependencies, conflicts, and replacements. If there are other
standards which this proposal will replace or with which it will
compete, please explain why the present proposal is a substantial
improvement.

# Specification

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
