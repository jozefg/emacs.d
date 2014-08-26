 (require 'whitespace)

(setq whitespace-line-column 80) ; This is the default value, but I tweak it often
(setq whitespace-style '(tabs lines-tail))

(global-whitespace-mode t) ; Judgement everywhere.

(provide 'init-whitespace)
