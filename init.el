
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
    (markdown-mode+ opam dune utop company-coq wgrep-ag poet-theme dracula-theme cargo wrap-region wiki-summary which-key tuareg toml-mode sml-mode smex smart-mode-line slime rvm rust-mode redprl racket-mode pyflakes pydoc purescript-mode proof-general pep8 paredit pandoc-mode org-present olivetti nyan-mode neotree multiple-cursors monokai-theme monky moe-theme markdown-mode magit lua-mode lorem-ipsum lean-mode latex-preview-pane js2-mode js-comint jonprl-mode intero inf-ruby idris-mode ido-ubiquitous hungry-delete hindent highlight-symbol highlight-parentheses gotham-theme git-gutter geiser flymake-rust flycheck-package flx-ido expand-region evil elm-mode delim-kill cubicaltt corral company-math company-ghc company-auctex color-theme auctex-latexmk anzu ag ace-window ace-jump-zap 2048-game)))
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
 '(markdown-code-face ((t (:inherit fixed-pitch :background "#091f2e" :foreground "#e0e0e0"))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :background "#091f2e" :foreground "#e0e0e0" :height 1.3))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :background "#0a3749" :foreground "#e0e0e0" :height 1.2))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :background "#245361" :foreground "#e0e0e0" :height 1.15))))
 '(markdown-inline-code-face ((t (:inherit fixed-pitch :background "#091f2e"))))
 '(markdown-pre-face ((t (:inherit fixed-pitch :background "#091f2e")))))

(put 'erase-buffer 'disabled nil)
(put 'upcase-region 'disabled nil)

;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
