(defun load-famous ()
  (with-open-file (stream "famous.txt")
    (remove-if-not
      #'(lambda (x) (> (length x) 0))
      (loop for line = (read-line stream nil)
            while line 
            collect (string-trim
                      '(#\Space #\Newline #\Backspace #\Tab #\Linefeed #\Page #\Return #\Rubout)
                      line)))))
