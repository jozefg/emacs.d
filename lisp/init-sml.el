(require-package 'sml-mode)

(defun query-sml (string)
  (with-current-buffer "*sml*"
    (end-of-buffer)
    (insert string ";")
    (comint-send-input)
    (end-of-buffer)
    (search-backward-regexp "^val it = fn")
    (extract-type
     (strip-text-properties (thing-at-point 'line)))))

(defun extract-type (string)
  (save-match-data
    (string-match "val it = fn : \\(.+\\)$" string)
    (match-string 1 string)))

(defun insert-150-template ()
  (interactive "")
  (save-excursion
    (let* ((word (thing-at-point 'word))
           (type (query-sml word)))
      (beginning-of-line)
      (insert "(* " word " : " type "\n")
      (insert " * REQUIRES: true\n * ENSURES : \n *)\n")
      (recenter-top-bottom))))

(define-key sml-mode-map (kbd "C-c C-t") 'insert-150-template)

(provide 'init-sml)
