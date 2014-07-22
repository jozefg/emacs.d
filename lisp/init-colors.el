(require-package 'color-theme)
(require-package 'zenburn-theme)
(require-package 'solarized-theme)
(setq color-theme-is-global t)
(color-theme-initialize)

;; Customize solarize
(setq solarized-distinct-fringe-background t) ;; make the fringe stand out from the background
(setq solarized-high-contrast-mode-line t) ;; make the modeline high contrast
(setq solarized-use-less-bold t) ;; Use less bolding
(setq solarized-use-more-italic t) ;; Use more italics
(setq solarized-emphasize-indicators nil) ;; Use less colors for indicators


(load-theme 'solarized-dark t)

(provide 'init-colors)
