;; 2.lisp
;; written by Paul Mantz
;; solution to Euler Project problem 2

(setq fib-list-to-four-mil
      (defun iter (last stlast list)
        (cond ((> 4000000 (+ last stlast)) list )
              (t (cons (+ last stlast) list))))
      (iter 0 1 '()))

(defun is-even? (n)
  (if (= (% n 2) 0)))
