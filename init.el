(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Package management, needed elsewhere
(require 'init-elpa)       ; Packaging

;; General utilities
(require 'init-backups)    ; Configure how emacs autosaves/backups work
(require 'init-browser)    ; Configure Emacs to use chrome
(require 'init-colors)     ; Pretty color theme
(require 'init-eshell)     ; Setup eshell
(require 'init-font)       ; Source Code Pro
(require 'init-startup)    ; Configure startup message and stuff like that

;; Buffer completetion and whatnot. Choose either ido or helm
(defvar using-helm-or-ido 'ido
  "Set to 'ido if we're using ido otherwise 'helm")
(require 'init-interact)   ; Configure our interactive system, helm or ido


;; Make Emacs more like home
(require 'init-util-fns)   ; Some useful functions I bind to keys
(require 'init-my-keys)    ; The minor mode for all my key shortcuts

;; Minor modes
(require 'init-parens)     ; Pretty parens
(require 'init-hippie)     ; Configure hippie
(require 'init-delete)     ; Hungry delete mode
(require 'init-whitespace) ; Judgemental highlighting!

;; Tools in Emacs
(require 'init-vcs)        ; Initialization and configuration for all things VCS
(require 'init-gpg)        ; For encrypting stuffs
(require 'init-journal)    ; Get org-journal properly setup and integrated
(require 'init-org)        ; Setup org mode with nicities
(require 'init-mail)       ; Setup mu4e and smtpmail for gmail

;; Language specifics
(require 'init-haskell)    ; Haskell
(require 'init-js)         ; js-comint mode
(require 'init-latex)      ; Configure latex, preview pane and other niceness
(require 'init-markdown)   ; Configure markdown
(require 'init-ocaml)      ; Nicer key bindings for Tuareg
(require 'init-python)     ; Python
(require 'init-rust)       ; Setup rust with a few helper keys

;; Theorem provers
(require 'init-agda)       ; Setup Agda paths & highlighting
(require 'init-coq)        ; Proof General & Coq
(require 'init-idris)      ; Setup Idris + Helm integration
(require 'init-twelf)      ; Just shell out to load twelf-init.el

;; And the rest
(require 'init-random)     ; Random packages with no configuration
(require 'init-smiles)     ; Just stupid fun stuff
