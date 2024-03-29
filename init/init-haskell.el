(require-package 'haskell-mode)
(require-package 'hindent)
;; (require-package 'intero)

;; haskell-mode drags in a log of extra modes
(require 'haskell-cabal)
(require 'haskell-interactive-mode)
(require 'haskell-font-lock)
(require 'haskell-debug)
(require 'haskell)


(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook #'hindent-mode)
;; (add-hook 'haskell-mode-hook 'intero-mode)

; Default configurations
(setq haskell-font-lock-symbols nil
      haskell-process-suggest-remove-import-lines t
      haskell-process-auto-import-loaded-modules t
      haskell-process-log t ; Set to t to debug issue
      haskell-align-imports-pad-after-name t
      haskell-doc-show-global-types t
      haskell-process-show-debug-tips nil
      haskell-process-type 'stack-ghci
      haskell-process-suggest-haskell-docs-imports t)

(add-to-list 'exec-path "~/.cabal/bin/")
(add-to-list 'exec-path "~/.ghcup/bin/")
(setenv "PATH" (concat "~/.ghcup/bin:~/.cabal/bin:/usr/local/bin" (getenv "PATH")))

(add-to-list 'exec-path "/usr/bin/local/") ; For GHC

(provide 'init-haskell)
