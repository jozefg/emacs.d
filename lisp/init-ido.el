(require 'ido) ;; Preincluded

(ido-mode t)
(ido-everywhere t)

(setq ido-enable-flex-matching t)

;; Note this requires emacs > 24
(require-package 'ido-ubiquitous)
(ido-ubiquitous-mode t)

(provide 'init-ido)
