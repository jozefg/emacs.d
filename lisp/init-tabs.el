;; No tabs!
(setq-default indent-tabs-mode nil)
(setq tab-stop-list (number-sequence 4 120 4))

;; No trailing space either!

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-tabs)
