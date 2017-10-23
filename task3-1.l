(defun summit (lst)
  (apply #'+ (remove nil lst)))
