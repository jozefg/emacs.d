(require-package 'company)

;; We want to avoid company mode in Idris because it makes things
;; unbearably slow.
(define-global-minor-mode global-selective-company-mode company-mode
  (lambda ()
    (when (not (member major-mode '(idris-mode
                                    minibuffer-inactive-mode
                                    eshell-mode)))
      (company-mode))))

(add-hook 'after-init-hook 'global-selective-company-mode)

;; Require the company backends I like. This goes here so it can be
;; turned on and off all at once.
(require-package 'company-ghc)
(require-package 'company-math)

(provide 'init-company)
