(setq user-full-name "Danny Gratzer")
(setq user-mail-address "jozefg@cmu.edu")

(setq inhibit-startup-message t)   ; No startup banner
(setq initial-scratch-message nil) ; No message in scratch buffer
(tool-bar-mode -1)                 ; No toolbars
(toggle-scroll-bar -1)             ; No scroll bar
(menu-bar-mode -1)                 ; No menu bar


;; A pretty modeline is worth every character
(require-package 'dash) ; Implicit dependency for sml
(require-package 'smart-mode-line)

(setq sml/no-confirm-load-theme t) ; Shhhh
(sml/apply-theme 'respectful)

(sml/setup) ; Pretty modeline

;; Toggle modelines visibility
(defvar mode-line-format-backup nil
  "A private variable used to toggle the mode line")
(make-variable-buffer-local 'mode-line-format-backup)

(defun toggle-mode-line ()
  (interactive)
  (let ((temp mode-line-format-backup))
    (setq mode-line-format-backup mode-line-format)
    (setq mode-line-format temp)))

(provide 'init-startup)
