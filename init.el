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
;; (try-require 'init-vcs)        ; Configuration for all things VCS
;; (try-require 'init-gpg)        ; For encrypting stuffs
(try-require 'init-org)        ; Setup org mode with nicities
;; (try-require 'init-tree)       ; Setup a directory tree

;; Language specifics
(try-require 'init-elisp)      ; Random utilities for elisp
(try-require 'init-haskell)    ; Haskell
;; (try-require 'init-js)         ; js-comint mode
(try-require 'init-latex)      ; Configure latex, preview pane
(try-require 'init-markdown)   ; Configure markdown
(try-require 'init-ocaml)      ; Nicer key bindings for Tuareg
(try-require 'init-python)     ; Python
;; (try-require 'init-racket)     ; Racket for when I'm nostalgic
;; (try-require 'init-rust)       ; Setup rust with a few helper keys
(try-require 'init-sml)        ; Setup sml with some helpers for 15-150

;; Theorem provers
(try-require 'init-agda)       ; Setup Agda paths & highlighting
(try-require 'init-coq)        ; Proof General & Coq
(try-require 'init-idris)      ; Setup Idris + Helm integration
;; (try-require 'init-twelf)      ; Just shell out to load twelf-init.el

;; And the rest
(try-require 'init-random)     ; Random packages with no configuration
(try-require 'init-smiles)     ; Just stupid fun stuff

(custom-set-variables
 '(company-coq-prettify-symbols nil)
 '(coq-compile-before-require nil)
 '(coq-prog-name "/home/jozefg/.opam/4.07.1/bin/coqtop" t)
 '(coq-variable-highlight-enable nil)
 '(proof-splash-enable nil)
 '(proof-three-window-enable t)
 '(proof-three-window-mode-policy (quote hybrid)))

(custom-set-faces
 '(agda2-highlight-catchall-clause-face ((t (:background "dim gray"))))
 '(agda2-highlight-coverage-problem-face ((t (:background "magenta"))))
 '(agda2-highlight-datatype-face ((t (:foreground "deep sky blue" :weight bold))))
 '(agda2-highlight-function-face ((t (:foreground "deep sky blue"))))
 '(agda2-highlight-postulate-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "DeepSkyBlue1"))))
 '(agda2-highlight-record-face ((t (:foreground "deep sky blue"))))
 '(agda2-highlight-unsolved-constraint-face ((t (:background "dark orange"))))
 '(agda2-highlight-unsolved-meta-face ((t (:background "dark orange"))))
 '(coq-button-face ((t (:background "black"))))
 '(markdown-code-face ((t (:inherit fixed-pitch :background "#091f2e" :foreground "#e0e0e0"))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :background "#091f2e" :foreground "#e0e0e0" :height 1.3))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :background "#0a3749" :foreground "#e0e0e0" :height 1.2))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :background "#245361" :foreground "#e0e0e0" :height 1.15))))
 '(markdown-inline-code-face ((t (:inherit fixed-pitch :background "#091f2e"))))
 '(markdown-italic-face ((t nil)))
 '(markdown-list-face ((t (:foreground "spring green"))))
 '(markdown-pre-face ((t (:inherit fixed-pitch :background "#091f2e"))))
 '(markdown-url-face ((t (:inherit fixed-pitch :foreground "green")))))

(put 'erase-buffer 'disabled nil)
(put 'upcase-region 'disabled nil)

;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
