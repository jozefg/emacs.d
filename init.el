(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Package management, needed elsewhere
(require 'init-package)        ; Packaging

;; General utilities
(try-require 'init-backups)    ; Configure how emacs autosaves/backups work
(try-require 'init-browser)    ; Configure Emacs to use chrome
(try-require 'init-colors)     ; Pretty color theme
(try-require 'init-eshell)     ; Setup eshell
(try-require 'init-font)       ; Source Code Pro
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
(try-require 'init-parens)     ; Pretty parens
(try-require 'init-hippie)     ; Configure hippie
(try-require 'init-delete)     ; Hungry delete mode
(try-require 'init-whitespace) ; Judgemental highlighting!

;; Tools in Emacs
(try-require 'init-vcs)        ; Configuration for all things VCS
(try-require 'init-gpg)        ; For encrypting stuffs
(try-require 'init-journal)    ; Get org-journal properly setup and integrated
(try-require 'init-org)        ; Setup org mode with nicities
(try-require 'init-mail)       ; Setup mu4e and smtpmail for gmail

;; Language specifics
(try-require 'init-haskell)    ; Haskell
(try-require 'init-js)         ; js-comint mode
(try-require 'init-latex)      ; Configure latex, preview pane
(try-require 'init-markdown)   ; Configure markdown
(try-require 'init-ocaml)      ; Nicer key bindings for Tuareg
(try-require 'init-python)     ; Python
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
