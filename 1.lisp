

(defun mult-sum (mult limit)
  (setq n (ceiling (/ limit mult)))
  (/ (* mult n (- n 1))
     2))

(print (mult-sum 1 10))
(print (mult-sum 2 10))
(print (mult-sum 3 10))
(print (mult-sum 4 10))
(print (mult-sum 4 20))

(print (- (+ (mult-sum 3 1000)
             (mult-sum 5 1000))
          (mult-sum 15 1000)))

(defun incr (n)
  (+ 1 n))

(defun is (expr expected)
  (if (= expr expected) "ok" "not ok"))
