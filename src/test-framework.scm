;; A simple test framework

(library (test-framework)
  (export test assert-equal run-tests)
  (import (chezscheme))

  (begin
    (define-syntax test
      (syntax-rules ()
	((_ name expr)
	 (if (eqv? expr #t)
	       (display (string-append "Test " name " passed.\n"))
	       (display (string-append "Test " name " *FAILED*: " expr "\n"))))))

    (define-syntax assert-equal
      (syntax-rules ()
	((_ expected actual)
	 (if (equal? expected actual)
	     #t
	     (string-append "Expected "
			    (number->string expected)
			    " but got "
			    (number->string actual))))))
    
    (define (run-tests tests)
      (display "Running tests...\n")
      (tests)
      (display "All tests completed.\n"))))
