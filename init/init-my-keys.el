;; Minor mode for things I like
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

;; Normal keybindings I override to be things I prefer
(define-key my-keys-minor-mode-map (kbd "C-;")     'ace-jump-mode)
(define-key my-keys-minor-mode-map (kbd "C-.")     'er/expand-region)
(define-key my-keys-minor-mode-map (kbd "C-a")     'smart-beginning-of-line)
(define-key my-keys-minor-mode-map (kbd "C-j")     'backward-char) ; ex-Vimmers hate me
(define-key my-keys-minor-mode-map (kbd "C-o")     'toggle-tree)
(define-key my-keys-minor-mode-map (kbd "C-w")     'clipboard-kill-region)
(define-key my-keys-minor-mode-map (kbd "C-x C-e") 'eval-replace-sexp)
(define-key my-keys-minor-mode-map (kbd "C-x C-j") 'list-buffers)
(define-key my-keys-minor-mode-map (kbd "C-x O")   'last-window)
(define-key my-keys-minor-mode-map (kbd "C-x j")   'switch-to-buffer)
(define-key my-keys-minor-mode-map (kbd "C-y")     'clipboard-yank)
(define-key my-keys-minor-mode-map (kbd "M-j")     'backward-word) ; For symmetry
(define-key my-keys-minor-mode-map (kbd "M-w")     'clipboard-kill-ring-save)
(define-key my-keys-minor-mode-map (kbd "M-z")     'ace-jump-zap-up-to-char)

;; Overview of the C-c prefix
;; C-c a * - Ag things
;; C-c c   - Clean buffers
;; C-c e   - Eshell
;; C-c f * - File finding functions
;; C-c g * - Go places
;; C-c k * - Kill things structurally
;; C-c m * - Mu4e things
;; C-c o * - Org utilities
;; C-c s * - Substitute text
;; C-c v   - Version control for mercurial
(define-key my-keys-minor-mode-map (kbd "C-c a d") 'ag-dired-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c a p") 'ag-project-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c a r") 'ag-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c c")   'kill-useless-buffers)
(define-key my-keys-minor-mode-map (kbd "C-c e")   'eshell)
(define-key my-keys-minor-mode-map (kbd "C-c f i") 'get-init-file)
(define-key my-keys-minor-mode-map (kbd "C-c f k") 'get-todo-file)
(define-key my-keys-minor-mode-map (kbd "C-c f p") 'find-file-at-point)
(define-key my-keys-minor-mode-map (kbd "C-c g c") 'ace-jump-mode)
(define-key my-keys-minor-mode-map (kbd "C-c g l") 'ace-jump-line-mode)
(define-key my-keys-minor-mode-map (kbd "C-c g n") 'goto-line)
(define-key my-keys-minor-mode-map (kbd "C-c g o") 'occur)
(define-key my-keys-minor-mode-map (kbd "C-c k b") 'kill-braces)
(define-key my-keys-minor-mode-map (kbd "C-c k p") 'kill-parens)
(define-key my-keys-minor-mode-map (kbd "C-c m i") 'jump-to-mailbox)
(define-key my-keys-minor-mode-map (kbd "C-c m u") 'mu4e-update-mail-and-index)
(define-key my-keys-minor-mode-map (kbd "C-c o t") 'org-todo-list)
(define-key my-keys-minor-mode-map (kbd "C-c o w") 'org-agenda-list)
(define-key my-keys-minor-mode-map (kbd "C-c o j") 'org-journal-new-entry)
(define-key my-keys-minor-mode-map (kbd "C-c s q") 'query-replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c s r") 'replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c s s") 'replace-string)
(define-key my-keys-minor-mode-map (kbd "C-c v")   'monky-status)

(global-set-key (kbd "RET") 'newline-and-indent)
(put 'downcase-region 'disabled nil)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map) ; Note that this is global

(my-keys-minor-mode 1) ; Run the damn thing

(provide 'init-my-keys)
