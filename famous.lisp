(defvar *famous* "famous.txt")

(defun load-famous ()
  (with-open-file (stream *famous*)
    (loop for line = (read-line stream nil)
          while line collect line)))
