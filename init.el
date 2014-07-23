(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)     ; Packaging
(require 'init-haskell)  ; Haskell
(require 'init-python)   ; Python
(require 'init-markdown) ; Configure markdown
(require 'init-backups)  ; Configure how emacs autosaves/backups work
(require 'init-coq)      ; Proof General & Coq
(require 'init-agda)     ; Setup Agda paths & highlighting
(require 'init-idris)    ; Setup Idris + Helm integration
(require 'init-my-keys)  ; The minor mode for all my key shortcuts
(require 'init-mail)     ; Setup mu4e and smtpmail for gmail
(require 'init-font)     ; Source Code Pro
(require 'init-helm)     ; Get Helm properly integrated
(require 'init-journal)  ; Get org-journal properly setup and integrated
(require 'init-colors)   ; Pretty color theme

;; Packages
(require-package '2048-game)

