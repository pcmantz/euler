;; 6.lisp
;; written by Paul Mantz
;; solution to the 6th Project Euler problem


(defun sq (n)
  (* n n))


(defun square-sum-sequence
    (reduce #'+ (map 'list #'sq list-to-100)))

(defun sum-square-sequence

    )