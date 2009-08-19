;; 2.lisp
;; written by Paul Mantz
;; solution to Euler Project problem 2

(defun is-even? (n)
  (= (mod n 2) 0))

(defun get-fib-even-sum-iter (last this sum limit)
  (if (< this limit)
      (get-fib-even-sum-iter this
                             (+ this last)
                             (if (is-even? this) (+ this sum) sum)
                             limit)
      sum))

(setq sum-even-fibs-to-four-mil
      (get-fib-even-sum-iter 1 1 0 4000000))
