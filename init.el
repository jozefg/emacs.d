(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)       ; Packaging
(require 'init-haskell)    ; Haskell
(require 'init-python)     ; Python
(require 'init-coq)        ; Proof General & Coq
(require 'init-ocaml)      ; Nicer key bindings for Tuareg
(require 'init-twelf)      ; Just shell out to load twelf-init.el
(require 'init-agda)       ; Setup Agda paths & highlighting
(require 'init-idris)      ; Setup Idris + Helm integration
(require 'init-rust)       ; Setup rust with a few helper keys
(require 'init-js)         ; js-comint mode
(require 'init-markdown)   ; Configure markdown
(require 'init-latex)      ; Configure latex, preview pane and other niceness
(require 'init-journal)    ; Get org-journal properly setup and integrated
(require 'init-org)        ; Setup org mode with nicities
(require 'init-backups)    ; Configure how emacs autosaves/backups work
(require 'init-util-fns)   ; Some useful functions I bind to keys
(require 'init-my-keys)    ; The minor mode for all my key shortcuts
(require 'init-hippie)     ; Configure hippie
(require 'init-mail)       ; Setup mu4e and smtpmail for gmail
(require 'init-eshell)     ; Setup eshell
(require 'init-browser)    ; Configure Emacs to use chrome
(require 'init-font)       ; Source Code Pro
(require 'init-vcs)        ; Initialization and configuration for all things VCS
(require 'init-helm)       ; Get Helm properly integrated
(require 'init-colors)     ; Pretty color theme
(require 'init-startup)    ; Configure startup message and stuff like that
(require 'init-parens)     ; Pretty parens
(require 'init-whitespace) ; Judgemental highlighting!
(require 'init-gpg)        ; For encrypting stuffs
(require 'init-delete)     ; Hungry delete mode
(require 'init-random)     ; Random packages with no configuration
(require 'init-smiles)     ; Just stupid fun stuff
