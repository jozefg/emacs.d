;; Delete all whitespace in a group, not just one
(require-package 'hungry-delete)
(global-hungry-delete-mode)

;; Highlight parentheses in a pretty manner
(require-package 'highlight-parentheses)
(highlight-parentheses-mode 1)

;; Delete highlighted regions like normal editors
(delete-selection-mode 1)

(provide 'init-random)
