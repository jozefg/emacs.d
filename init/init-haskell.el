(require-package 'haskell-mode)
(require-package 'ghc)

;; haskell-mode drags in a log of extra modes
(require 'haskell-cabal)
(require 'haskell-interactive-mode)


(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

; Default configurations
(setq haskell-font-lock-symbols t
      haskell-process-suggest-remove-import-lines t
      haskell-process-auto-import-loaded-modules t
      haskell-process-log nil ; Set to t to debug issue
      haskell-align-imports-pad-after-name t
      haskell-doc-show-global-types t
      haskell-process-show-debug-tips nil
      haskell-process-type 'cabal-repl)

(add-to-list 'exec-path "~/.cabal/bin/")
(setenv "PATH" (concat "~/.cabal/bin:/usr/local/bin" (getenv "PATH")))

(add-to-list 'exec-path "/usr/bin/local/") ; For GHC

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook 'ghc-init)


(provide 'init-haskell)
