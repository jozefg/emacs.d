(require-package 'color-theme)
(require-package 'zenburn-theme)
(require-package 'solarized-theme)
(require-package 'monokai-theme)
(require-package 'moe-theme)

(setq color-theme-is-global t)
(color-theme-initialize)

;; Customize solarize
(setq solarized-distinct-fringe-background t) ;; make the fringe stand out
(setq solarized-high-contrast-mode-line t)    ;; make the modeline high contrast
(setq solarized-use-less-bold t)              ;; Use less bolding
(setq solarized-use-more-italic t)            ;; Use more italics
(setq solarized-emphasize-indicators nil)     ;; Use less colors for indicators

;(load-theme 'solarized-dark t)
;(load-theme 'monokai t)
(load-theme 'moe-dark t)

;; If we're living in th eterminal, we really don't want
;; a color theme.
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

(provide 'init-colors)
