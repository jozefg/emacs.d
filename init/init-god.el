;; For my poor pinky
(require-package 'god-mode)
(global-set-key (kbd "<escape>") 'god-mode-all)

(define-key god-local-mode-map (kbd "z") 'repeat)
(define-key god-local-mode-map (kbd "i") 'god-local-mode)

(require 'god-mode-isearch)
(define-key isearch-mode-map (kbd "<escape>") 'god-mode-isearch-activate)
(define-key god-mode-isearch-map (kbd "<escape>") 'god-mode-isearch-disable)

(add-to-list 'god-exempt-major-modes 'eshell-mode)


(provide 'init-god)
