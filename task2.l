(defun print-period-i (n)
  (do ((i n (- i 1)))
      ((< i 1) 'done)
      (format t ".")))

(defun print-period-r (n)
  (if (<= n 0)
      'done
    (progn (format t ".")
	   (print-period-r (- n 1)))))

(defun count-a-i (lst)
  (setq count 0)
  (dolist (x lst)
    (setq count (+ count (if (eq x `a) 1 0))))
  (+ count 0))

(defun count-a-r (lst)
  (if lst
      (+ (if (eq (car lst) `a) 1 0) (count-a-r (cdr lst)))
      0))
