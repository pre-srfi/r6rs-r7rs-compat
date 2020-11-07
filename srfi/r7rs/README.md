# R7RS standard libraries for Akku.scm

[Akku.scm](https://akkuscm.org/) has the ability to convert R7RS
`define-library` forms to R6RS `library` forms. This package provides
the R7RS standard library for use with such converted libraries.

These libraries will not work properly unless they are installed by
Akku.scm version 0.3.0 or later. They need the information in the
`(akku metadata)` library.

## Current status

* Chez Scheme - works
* GNU Guile - works
* Ikarus - missing support for `u8-ready?`, `char-ready?`, and
  `open-output-bytevector`
* IronScheme - full test suite segfaults Mono
* Larceny - already supports R7RS, tests crash on `vector-map`
* Loko Scheme - fails due to missing a SRFI 38 compatibility library
* Mosh - full test suite fails with a conflicting import
* Racket - conflicts with `(scheme base)`, need to figure out a way to
  use [racket-r7rs](https://github.com/lexi-lambda/racket-r7rs) instead
* Sagittarius - already supports R7RS
* Vicare - full test suite fails from static type checking
* Ypsilon - incompatible with SRFI-43 from `chez-srfi` (should be fixed)

## Credits

The code in this repository is in part based on yuni by okuoku:
https://github.com/okuoku/yuni

## License

akku-r7rs - R7RS compatibility libraries for Akku

Written in 2014-2018 by OKUMURA Yuki <mjt@cltn.org>

Written in 2018-2020 by Göran Weinholt <goran@weinholt.se>

To the extent possible under law, the author(s) have dedicated all
copyright and related and neighboring rights to this software to
the public domain worldwide. This software is distributed without
any warranty.

You should have received a copy of the CC0 Public Domain Dedication
along with this software. If not, see
<http://creativecommons.org/publicdomain/zero/1.0/>.
