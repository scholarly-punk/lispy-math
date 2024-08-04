(import (chezscheme)
	(test-framework))

(define (practice-tests)
  (test "Addition test" (assert-equal 5 (+ 2 3)))
  (test "Multiplication test" (assert-equal 6 (* 2 3)))
  (test "Failure test" (assert-equal 4 (+ 2 3))))

(run-tests practice-tests)
