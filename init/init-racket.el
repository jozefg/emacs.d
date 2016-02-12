(require-package 'racket-mode)
(add-to-list 'auto-mode-alist '("\\.rkt\\'" . racket-mode))

(define-key racket-mode-map (kbd "C-c C-l") 'racket-run)

(provide 'init-racket)
