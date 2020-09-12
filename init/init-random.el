;; Can't leave home without it
(require-package 'cl)

;; Delete highlighted regions like normal editors
(delete-selection-mode 1)

;; Useful for large chunks of editing
(require-package 'lorem-ipsum)

;; Pandoc!
(require-package 'pandoc-mode)

;; Update buffers automatically
(global-auto-revert-mode 1)

;; Expand region is lovely
(require-package 'expand-region)

;; Git gutter
(require-package 'git-gutter)
(global-git-gutter-mode)

;; Highlight the symbol under the point
(require-package 'highlight-symbol)
(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(setq highlight-symbol-on-navigation-p t)

;; Anzu mode
(require-package 'anzu)
(global-anzu-mode 1)

;; Nicer parenthesis handling
(require-package 'corral)
(setq corral-preserve-point t)

;; Yasnippet
(require-package 'yasnippet)
(setq yas-triggers-in-field t)

;; which-key
(require-package 'which-key)
(which-key-mode)

;; lean support
(require-package 'lean-mode)

;; My stuff
(require-package 'wiki-summary)

(provide 'init-random)
