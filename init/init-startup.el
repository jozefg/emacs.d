;; Personals
(setq user-full-name "Daniel Gratzer")
(setq user-mail-address "gratzer@cs.au.dk")

;; Configure Emacs's initial configuration
(setq inhibit-startup-message t)    ; No startup banner
(setq initial-scratch-message nil)  ; No message in scratch buffer
(tool-bar-mode -1)                  ; No toolbars
(scroll-bar-mode -1)                ; No scroll bar
(setq scroll-conservatively 100)    ; Scroll smoothly
(menu-bar-mode -1)                  ; No menu bar

;; A pretty modeline is worth every character
(require-package 'dash) ; Implicit dependency for sml
(require-package 'smart-mode-line)

(setq sml/no-confirm-load-theme t) ; Shhhh
(sml/apply-theme 'respectful)
(sml/setup) ; Pretty modeline

;; Ensure that Emacs doesn't pause often for GC
(setq gc-cons-threshold 20000000)

;; Make sure to allow newlines
(setq require-final-newline t)

;; Shorten the prompts to y or n.
(defalias 'yes-or-no-p 'y-or-n-p)

;; Request permission before closing emacs.
(setq confirm-kill-emacs 'y-or-n-p)

;; Allow tramp to save passwords
(setq password-cache-expiry nil)

;; Never use dialog boxes
(setq use-dialog-box nil)

(provide 'init-startup)
