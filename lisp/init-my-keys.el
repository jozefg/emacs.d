;; Minor mode for things I like
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

;; Normal keybindings I override to be things I prefer
(define-key my-keys-minor-mode-map (kbd "C-w") 'clipboard-kill-region)
(define-key my-keys-minor-mode-map (kbd "M-w") 'clipboard-kill-ring-save)
(define-key my-keys-minor-mode-map (kbd "C-y") 'clipboard-yank)
(define-key my-keys-minor-mode-map (kbd "C-a") 'smart-beginning-of-line)
(define-key my-keys-minor-mode-map (kbd "C-j") 'backward-char) ; ex-Vimmers hate me
(define-key my-keys-minor-mode-map (kbd "M-j") 'backward-word) ; For symmetry
(define-key my-keys-minor-mode-map (kbd "C-x j") 'switch-to-buffer)
(define-key my-keys-minor-mode-map (kbd "C-x C-j") 'list-buffers)
(define-key my-keys-minor-mode-map (kbd "C-;") 'hippie-expand)

;; The C-c * series of commands, mostly helpful shortcuts
(define-key my-keys-minor-mode-map (kbd "C-c a") 'ag-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c c") 'kill-useless-buffers)
(define-key my-keys-minor-mode-map (kbd "C-c d") 'ag-dired-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c e") 'eshell)
(define-key my-keys-minor-mode-map (kbd "C-c f") 'match-paren)
(define-key my-keys-minor-mode-map (kbd "C-c i") 'get-init-file)
(define-key my-keys-minor-mode-map (kbd "C-c k") 'get-todo-file)
(define-key my-keys-minor-mode-map (kbd "C-c m") 'mu4e)
(define-key my-keys-minor-mode-map (kbd "C-c o") 'new-org-notes-buffer)
(define-key my-keys-minor-mode-map (kbd "C-c p") 'ag-project-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c q") 'query-replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c r") 'replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c s") 'replace-string)
(define-key my-keys-minor-mode-map (kbd "C-c t") 'org-todo-list)
(define-key my-keys-minor-mode-map (kbd "C-c u") 'mu4e-update-mail-and-index)
(define-key my-keys-minor-mode-map (kbd "C-c v") 'monky-status)
(define-key my-keys-minor-mode-map (kbd "C-c w") 'org-agenda-list)


(global-set-key (kbd "RET") 'newline-and-indent)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map) ; Note that this is global

(my-keys-minor-mode 1) ; Run the damn thing

(provide 'init-my-keys)
