;; Delete highlighted regions like normal editors
(delete-selection-mode 1)

;; Useful for large chunks of editing
(require-package 'lorem-ipsum)

;; For presenting org-files
(require-package 'org-present)

;; For JavaScript
(require-package 'js2-mode)

;; Pandoc!
(require-package 'pandoc-mode)

;; Better behavior for moving
(require-package 'ace-jump-zap)
(require-package 'ace-jump-mode)

(provide 'init-random)
