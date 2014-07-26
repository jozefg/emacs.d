(require-package 'haskell-mode)
(require-package 'ghc) ;; ghc-mod
(require 'haskell-cabal)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(setq haskell-font-lock-symbols t)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

(define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)

(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

(custom-set-variables
 '(haskell-process-log t) ; Note that this creates an extra buffer
 '(haskell-process-show-debug-tips nil)
 '(haskell-process-type 'cabal-repl))

;; ghc-mod
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(setq ghc-ghc-options '("-fno-warn-unused-do-bind" ; I really don't care about this one
			"-Wall"))                  ; I care about the rest though

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
