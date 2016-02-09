(require-package 'flycheck-package)

(require-package 'paredit)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(define-key paredit-mode-map (kbd "C-j") nil)

(provide 'init-elisp)
