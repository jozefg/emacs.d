(setenv "EDITOR" "emacsclient")
(setenv "PAGER" "cat")
(setenv "GPGKEY" my-gpg-key)
(setenv "PATH" (concat "~/.nix-profile/bin:" (getenv "PATH")))
(setenv "LD_LIBRARY_PATH" (concat "/usr/local/lib:" (getenv "LD_LIBRARY_PATH")))

;; clear the buffer in eshell
(defun eshell/clear ()
  "clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defalias 'ff 'find-file)
(defalias 'ffo 'find-file-other-window)


(provide 'init-eshell)
