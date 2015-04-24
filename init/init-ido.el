(require 'ido) ;; Preincluded
(require-package 'flx-ido)

(ido-mode t)
(ido-everywhere t)
(flx-ido-mode 1)

;; Note this requires emacs > 24
(require-package 'ido-ubiquitous)
(ido-ubiquitous-mode t)

;; Since we're using ido and not helm, make M-x not awful
(require-package 'smex)
(smex-initialize)

(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-completion-map [up] 'previous-history-element)
            (define-key ido-completion-map (kbd "C-f") 'ido-next-match)
            (define-key ido-completion-map (kbd "C-l") 'ido-prev-match)))

(provide 'init-ido)
