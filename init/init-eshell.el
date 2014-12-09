(setenv "EDITOR" "emacsclient")
(setenv "PAGER" "cat")

;; clear the buffer in eshell
(defun eshell/clear ()
  "clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defalias 'ff 'find-file)
(defalias 'ffo 'find-file-other-window)


(provide 'init-eshell)
