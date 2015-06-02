;; For my poor pinky
(require-package 'god-mode)
(god-mode-activate)

(define-key god-local-mode-map (kbd "z") 'repeat)
(define-key god-local-mode-map (kbd "i") 'god-local-mode)

(require 'god-mode-isearch)
(define-key isearch-mode-map (kbd "<escape>") 'god-mode-isearch-activate)
(define-key god-local-mode-isearch-map (kbd "<escape>")
  'god-mode-isearch-disable)

(add-to-list 'god-exempt-major-modes 'eshell-mode)

(defun indicate-god-mode ()
  (setq cursor-type
        (if (or god-local-mode buffer-read-only)
            'box
          'bar))
  (negate-nyan-cat))

(add-hook 'god-local-mode-hook 'indicate-god-mode)

(provide 'init-god)
