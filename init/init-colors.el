(require-package 'color-theme)
(require-package 'monokai-theme)
(require-package 'moe-theme)
(require-package 'gotham-theme)

(setq color-theme-is-global t)
(color-theme-initialize)

;;(load-theme 'monokai t)
;;(load-theme 'moe-dark t)
(load-theme 'gotham t)

;; If we're living in th eterminal, we really don't want
;; a color theme.
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

(provide 'init-colors)
