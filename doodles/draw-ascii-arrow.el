(defun length-of-line-at-point (p)
  (save-excursion
    (goto-char p)
    (let ((end (progn (end-of-line) (point)))
          (begin (progn (beginning-of-line) (point))))
      (- end begin))))

(defun start-of-line-at-point (p)
  (save-excursion
    (goto-char p)
    (line-beginning-position)))

(defun fill-to-column (char cap column)
  (save-excursion
    (end-of-line)
    (let ((num (max 0 (- column (length-of-line-at-point (point))))))
      (insert (s-repeat num (char-to-string char)) (char-to-string cap))
      (+ num 1))))

(defun max-line-length (start end)
  (let ((max-so-far (length-of-line-at-point end)))
    (save-excursion
      (goto-char start)
      (beginning-of-line)
      (while (< (point) (start-of-line-at-point end))
        (setq max-so-far (max max-so-far (length-of-line-at-point (point))))
        (forward-line))
      max-so-far)))

(defun draw-ascii-arrow (begin end)
  (interactive "r")
  (let ((arrow-column (+ 5 (max-line-length begin end)))
        (line-of-end (start-of-line-at-point end)))
    (save-excursion
      (goto-char begin)
      (beginning-of-line)

      (incf line-of-end (fill-to-column ?- ?+ arrow-column))
      (forward-line)
      (while (< (point) line-of-end)
        (incf line-of-end (fill-to-column ? ?| arrow-column))
        (forward-line))

      (fill-to-column ?- ?+ arrow-foo))))
