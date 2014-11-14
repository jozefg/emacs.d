;; Can't leave home without it
(require-package 'cl)

;; Delete highlighted regions like normal editors
(delete-selection-mode 1)

;; Useful for large chunks of editing
(require-package 'lorem-ipsum)

;; For presenting org-files
(require-package 'org-present)

;; For JavaScript
(require-package 'js2-mode)

;; Lua is sometimes nice
(require-package 'lua-mode)

;; Pandoc!
(require-package 'pandoc-mode)

;; Better behavior for moving
(require-package 'ace-jump-zap)
(require-package 'ace-jump-mode)

;; Update buffers automatically
(global-auto-revert-mode 1)

;; Expand region is lovely
(require-package 'expand-region)

;; Toml for Rust
(require-package 'toml-mode)

(provide 'init-random)
