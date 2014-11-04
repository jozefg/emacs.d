(require 'whitespace)

;; Death to tabs.
(setq-default indent-tabs-mode nil)
(setq tab-stop-list (number-sequence 4 120 4))

;; No trailing space either!
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq whitespace-line-column 80) ; This is the default value, but I tweak a lot
(setq whitespace-style '(face tabs lines-tail))

(global-whitespace-mode 1) ; Judgement everywhere.

(provide 'init-whitespace)
