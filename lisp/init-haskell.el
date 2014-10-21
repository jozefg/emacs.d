(require-package 'haskell-mode)
(require-package 'ghc) ;; ghc-mod

;; haskell-mode drags in a log of extra modes
(require 'haskell-cabal)
(require 'haskell-interactive-mode)


(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

; Default configurations
(setq haskell-font-lock-symbols t
      haskell-process-suggest-remove-import-lines t
      haskell-process-auto-import-loaded-modules t
      haskell-process-log nil ; Set to t to debug issue
      haskell-align-imports-pad-after-name t
      haskell-doc-show-global-types t
      haskell-process-show-debug-tips nil
      haskell-process-type 'cabal-repl)

;; ghc-mod
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook 'ghc-init)

(define-key interactive-haskell-mode-map (kbd "C-c C-t") 'ghc-show-type)
(define-key interactive-haskell-mode-map (kbd "C-c C-i") 'ghc-show-info)

(setq ghc-insert-key (kbd "C-c t"))
(provide 'init-haskell)
