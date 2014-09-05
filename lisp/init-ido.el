(require 'ido) ;; Preincluded

(ido-mode t)
(ido-everywhere t)

(setq ido-enable-flex-matching t)

;; Note this requires emacs > 24
(require-package 'ido-ubiquitous)
(ido-ubiquitous-mode t)

(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-completion-map [up] 'previous-history-element)
            (define-key ido-completion-map (kbd "C-f") 'ido-next-match)
            (define-key ido-completion-map (kbd "C-l") 'ido-prev-match)))


(provide 'init-ido)
