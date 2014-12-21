(require-package 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Require the company backends I like. This goes here so it can be
;; turned on and off all at once.
(require-package 'company-ghc)
(require-package 'company-math)

(provide 'init-company)
