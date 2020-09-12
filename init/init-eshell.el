(require-package 'eshell-prompt-extras)
(setenv "EDITOR" "emacsclient")
(setenv "PAGER" "cat")
(setenv "TROUPE" "/home/jozefg/Downloads/build/Troupe")
(setenv "PATH" (concat "/home/jozefg/Downloads/build/Troupe/bin:/home/jozefg/.nix-profile/bin:/home/jozefg/.local/bin:" (getenv "PATH")))
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

(with-eval-after-load "esh-opt"
  (autoload 'epe-theme-lambda "eshell-prompt-extras")
  (setq eshell-highlight-prompt nil
        eshell-prompt-function 'epe-theme-lambda))

(defalias 'ff 'find-file)
(defalias 'ffo 'find-file-other-window)


(provide 'init-eshell)
