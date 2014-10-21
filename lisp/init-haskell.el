(require-package 'haskell-mode)
(require-package 'ghc) ;; ghc-mod
(require 'haskell-cabal)

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

;; GHC hacking functions. If you don't play with GHC don't bother
;; Mostly shamelessly stolen from wiki
(setq ghc-location "~/ghc")
(defun compile-ghc ()
  (interactive)
  (let ((compile-command (if (boundp 'ghc-compile)
                             (concat "cd " ghc-location "; " ghc-compile)
                             (concat "cd " ghc-location "/ghc; make 2"))))
    (compile compile-command))
  (set-buffer "*compilation*")
  (setq default-directory ghc-location))

(defun set-compile-ghc ()
  (local-set-key (kbd "C-q") 'compile-ghc))

(add-hook 'haskell-mode-hook 'set-compile-ghc)

(provide 'init-haskell)
