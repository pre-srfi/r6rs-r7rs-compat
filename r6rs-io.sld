(define-library (r6rs-io)
  (export get-u8
          get-bytevector-n
          get-bytevector-n!
          get-char
          get-string-n
          get-line

          put-u8
          put-bytevector
          put-char
          put-string)
  (import (scheme base) (scheme case-lambda))
  (begin

    ;;;

    (define (get-u8 port)
      #f)

    (define (get-bytevector-n port count)
      (read-bytevector count port))

    (define (get-bytevector-n! port bytevector start count)
      (read-bytevector! bytevector port start (+ start count)))

    (define (get-char port)
      (read-char port))

    (define (get-string-n port count)
      (read-string count port))

    (define (get-line port)
      (read-line port))

    ;;;

    (define (put-u8 port byte)
      (write-u8 byte port))

    (define put-bytevector
      (case-lambda
        ((port bytevector)
         (write-bytevector bytevector port))
        ((port bytevector start)
         (write-bytevector bytevector port start))
        ((port bytevector start count)
         (write-bytevector bytevector port start (+ start count)))))

    (define (put-char port char)
      (write-char char port))

    (define put-string
      (case-lambda
        ((port string)
         (write-string string port))
        ((port string start)
         (write-string string port start))
        ((port string start count)
         (write-string string port start (+ start count)))))))
