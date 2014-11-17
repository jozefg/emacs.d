;; Personals
(setq user-full-name my-name)
(setq user-mail-address my-email)

;; Configure Emacs's initial configuration
(setq inhibit-startup-message t)    ; No startup banner
(setq initial-scratch-message nil)  ; No message in scratch buffer
(setq initial-major-mode 'org-mode) ; Start with org mode
(tool-bar-mode -1)                  ; No toolbars
(toggle-scroll-bar -1)              ; No scroll bar
(menu-bar-mode -1)                  ; No menu bar

;; A pretty modeline is worth every character
(require-package 'dash) ; Implicit dependency for sml
(require-package 'smart-mode-line)

(setq sml/no-confirm-load-theme t) ; Shhhh
(sml/apply-theme 'dark)
(sml/setup) ; Pretty modeline

;; Ensure that Emacs doesn't pause often for GC
(setq gc-cons-threshold 20000000)

(provide 'init-startup)
