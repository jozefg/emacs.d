
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;; Package management, needed elsewhere
(require 'init-package)        ; Packaging

;; Personal information, used in other places
(try-require 'init-personal)

;; General utilities
(try-require 'init-backups)    ; Configure how emacs autosaves/backups work
(try-require 'init-browser)    ; Configure Emacs to use chrome
(try-require 'init-colors)     ; Pretty color theme
(try-require 'init-eshell)     ; Setup eshell
(try-require 'init-font)       ; Source Code Pro
(try-require 'init-server)     ; Setup server
(try-require 'init-startup)    ; Configure startup message and stuff like that

;; Buffer completetion and whatnot. Choose either ido or helm
(defvar using-helm-or-ido 'ido
  "Set to 'ido if we're using ido otherwise 'helm")
(try-require 'init-interact)   ; Configure our interactive system, helm or ido


;; Make Emacs more like home
(try-require 'init-util-fns)   ; Some useful functions I bind to keys
(try-require 'init-surround)   ; surround like mimicking
(try-require 'init-my-keys)    ; The minor mode for all my key shortcuts

;; Minor modes
(try-require 'init-ace)        ; Some helpful packages for moving around
(try-require 'init-company)    ; Autocompletion with less suck
(try-require 'init-parens)     ; Pretty parens
(try-require 'init-hippie)     ; Configure hippie
(try-require 'init-delete)     ; Hungry delete mode
(try-require 'init-whitespace) ; Judgemental highlighting!

;; Tools in Emacs
(try-require 'init-ag)         ; Ag in emacs
(try-require 'init-vcs)        ; Configuration for all things VCS
(try-require 'init-gpg)        ; For encrypting stuffs
(try-require 'init-org)        ; Setup org mode with nicities
; (try-require 'init-mail)       ; Setup mu4e and smtpmail for gmail
(try-require 'init-tree)       ; Setup a directory tree

;; Language specifics
(try-require 'init-elisp)      ; Random utilities for elisp
(try-require 'init-haskell)    ; Haskell
(try-require 'init-js)         ; js-comint mode
(try-require 'init-latex)      ; Configure latex, preview pane
(try-require 'init-markdown)   ; Configure markdown
(try-require 'init-ocaml)      ; Nicer key bindings for Tuareg
(try-require 'init-python)     ; Python
(try-require 'init-racket)     ; Racket for when I'm nostalgic
(try-require 'init-rust)       ; Setup rust with a few helper keys
(try-require 'init-sml)        ; Setup sml with some helpers for 15-150

;; Theorem provers
(try-require 'init-agda)       ; Setup Agda paths & highlighting
(try-require 'init-coq)        ; Proof General & Coq
(try-require 'init-idris)      ; Setup Idris + Helm integration
(try-require 'init-twelf)      ; Just shell out to load twelf-init.el

;; And the rest
(try-require 'init-random)     ; Random packages with no configuration
(try-require 'init-smiles)     ; Just stupid fun stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coq-compile-before-require nil)
 '(package-selected-packages
   (quote
    (tuareg proof-general nyan-mode 2048-game wiki-summary which-key inf-ruby rvm redprl cubicaltt jonprl-mode corral slime evil multiple-cursors olivetti anzu highlight-symbol git-gutter purescript-mode elm-mode toml-mode expand-region pandoc-mode geiser lua-mode org-present lorem-ipsum idris-mode sml-mode flymake-rust flymake-easy rust-mode racket-mode pep8 pydoc pyflakes markdown-mode latex-preview-pane js-comint js2-mode intero hindent paredit flycheck-package neotree magit monky ag hungry-delete highlight-parentheses company-math company-ghc company ace-window ace-jump-zap delim-kill wrap-region f s smex ido-ubiquitous flx-ido smart-mode-line dash gotham-theme moe-theme monokai-theme color-theme)))
 '(proof-splash-enable nil)
 '(proof-three-window-enable t)
 '(proof-three-window-mode-policy (quote hybrid))
 '(proof-toolbar-enable nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-highlight-datatype-face ((t (:foreground "deep sky blue" :weight bold))))
 '(agda2-highlight-function-face ((t (:foreground "deep sky blue"))))
 '(agda2-highlight-postulate-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "DeepSkyBlue1"))))
 '(agda2-highlight-record-face ((t (:foreground "deep sky blue")))))
