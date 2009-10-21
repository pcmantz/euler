;; 3.lisp
;; written by Paul Mantz
;; solution to the 3rd Project Euler problem

;; Problem:
;;
;; The prime factors of 13195 are 5, 7, 13 and 29.
;;
;; What is the largest prime factor of the number 600851475143 ?

(defun get-factors (x)
  (defun get-factors-iter (y c)
    (cond
      ((= y 1) nil)
      ((eq (rem y c) 0) (cons c (get-factors-iter (/ y c) c)))
      (t (get-factors-iter y (+ c 2)))))
  (cond
    ((= x 1) nil)
    ((= 0 (rem x 2)) (cons 2 (get-factors (/ x 2))))
    (t (get-factors-iter x 3))))
