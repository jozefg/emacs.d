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

;; Update buffers automatically
(global-auto-revert-mode 1)

;; Expand region is lovely
(require-package 'expand-region)

;; Toml for Rust
(require-package 'toml-mode)

;; Elm mode
(require-package 'elm-mode)

;; Purescript mode
(require-package 'purescript-mode)
(add-hook 'purescript-mode-hook 'purescript-identation-mode)

;; Git gutter
(require-package 'git-gutter)
(global-git-gutter-mode)

;; Anzu mode
(require-package 'anzu)
(global-anzu-mode 1)

;; For writing
(require-package 'olivetti)

;; Multiple cursors ala Sublime
(require-package 'multiple-cursors)

;; For CL
(require-package 'slime)
(setq inferior-lisp-program "/usr/bin/clisp")

;; Nicer parenthesis handling
(require-package 'corral)
(setq corral-preserve-point t)

;; Restore window configurations
(winner-mode)

;; My stuff
(require-package 'wiki-summary)

(provide 'init-random)
