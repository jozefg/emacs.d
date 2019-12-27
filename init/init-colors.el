;; (require-package 'color-theme)
(require-package 'poet-theme)
(require-package 'dracula-theme)
(require-package 'monokai-theme)
(require-package 'moe-theme)
(require-package 'gotham-theme)
(require-package 'zerodark-theme)

;; (setq color-theme-is-global t)
;; (color-theme-initialize)

;; (load-theme 'gotham t)
;; (load-theme 'moe-dark t)
(load-theme 'monokai t)
;; (load-theme 'zerodark t)
;; (load-theme 'poet-dark t)
;; (load-theme 'dracula t)

;; If we're living in the terminal, we really don't want
;; a color theme.
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

(provide 'init-colors)
