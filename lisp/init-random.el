;; Delete all whitespace in a group, not just one
(require-package 'hungry-delete)
(global-hungry-delete-mode)

;; Delete highlighted regions like normal editors
(delete-selection-mode 1)

(provide 'init-random)
