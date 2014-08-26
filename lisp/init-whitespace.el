 (require 'whitespace)

(setq whitespace-line-column 80) ; This is the default value, but I tweak a lot
(setq whitespace-style '(face tabs lines-tail))

(global-whitespace-mode 1) ; Judgement everywhere.

(provide 'init-whitespace)
