(require-package 'god-mode)
(god-mode)

(defun my-update-cursor ()
  (setq cursor-type
        (if (or god-local-mode buffer-read-only) 'box 'bar)))

(add-hook 'god-mode-enabled-hook 'my-update-cursor)
(add-hook 'god-mode-disabled-hook 'my-update-cursor)

(define-key god-local-mode-map (kbd ".") 'repeat)
(define-key god-local-mode-map (kbd "i") 'god-local-mode)
(define-key god-local-mode-map (kbd "z") 'ido-switch-buffer)
(define-key god-local-mode-map (kbd "<backspace>") 'backward-kill-word)

(provide 'init-god)
