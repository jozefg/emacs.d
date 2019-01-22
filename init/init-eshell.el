(setenv "EDITOR" "emacsclient")
(setenv "PAGER" "cat")
(setenv "GPGKEY" my-gpg-key)
(setenv "PATH" (concat "/home/jozefg/.nix-profile/bin:/home/jozefg/.local/bin:" (getenv "PATH")))
(setenv "LD_LIBRARY_PATH" (concat "/usr/local/lib:" (getenv "LD_LIBRARY_PATH")))

;; eshell now defines a lousy clear function so we need to define this
;; one as late as possible.
(add-hook 'eshell-mode-hook
          (lambda ()
            ;; clear the buffer in eshell
            (defun eshell/clear ()
              "clear the eshell buffer."
              (interactive)
              (let ((inhibit-read-only t))
                (erase-buffer)
                (recenter-top-bottom 0)))))

(setq eshell-prompt-function
      (lambda nil
        (concat
         (propertize (eshell/pwd) 'face `(:foreground "light blue"))
         " $ ")))
(setq eshell-highlight-prompt nil)

(defalias 'ff 'find-file)
(defalias 'ffo 'find-file-other-window)


(provide 'init-eshell)
