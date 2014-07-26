(require-package 'haskell-mode)
(require-package 'ghc) ;; ghc-mod
(require 'haskell-cabal)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(setq haskell-font-lock-symbols t)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-to-list 'load-path "~/.cabal/share/x86_64-linux-ghc-7.6.3/ghc-mod-3.1.6")
(add-to-list 'exec-path "~/.cabal/bin")
(autoload 'ghc-init "ghc" nil t)

(define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)
(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

(custom-set-variables
 '(haskell-process-log t)
 '(haskell-process-show-debug-tips nil)
 '(haskell-process-type (quote cabal-repl)))

;; ghc-mod
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;; GHC
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

 ;; search withing GHC compiler code
(defun rgrep-ghc (regexp)
  (interactive (list (progn (grep-compute-defaults) (grep-read-regexp))))
  (rgrep regexp "*hs" (concat ghc-location "/compiler/")))
(global-set-key (kbd "M-c") 'rgrep-ghc)

(provide 'init-haskell)
