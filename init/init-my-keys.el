;; Minor mode for things I like
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

;; Normal keybindings I override to be things I prefer
(define-key my-keys-minor-mode-map (kbd "C-;")      'ace-jump-mode)
(define-key my-keys-minor-mode-map (kbd "M-/")      'company-complete)
(define-key my-keys-minor-mode-map (kbd "C-.")      'er/expand-region)
(define-key my-keys-minor-mode-map (kbd "C-a")      'smart-beginning-of-line)
(define-key my-keys-minor-mode-map (kbd "C-j")      'backward-char) ; ex-Vimmers hate me
(define-key my-keys-minor-mode-map (kbd "C-o")      'ace-window)
(define-key my-keys-minor-mode-map (kbd "C-w")      'clipboard-kill-region)
(define-key my-keys-minor-mode-map (kbd "C-x C-e")  'eval-replace-sexp)
(define-key my-keys-minor-mode-map (kbd "C-x C-j")  'list-buffers)
(define-key my-keys-minor-mode-map (kbd "C-x O")    'last-window)
(define-key my-keys-minor-mode-map (kbd "C-x j")    'switch-to-buffer)
(define-key my-keys-minor-mode-map (kbd "C-y")      'clipboard-yank)
(define-key my-keys-minor-mode-map (kbd "M-j")      'backward-word) ; For symmetry
(define-key my-keys-minor-mode-map (kbd "M-w")      'clipboard-kill-ring-save)
(define-key my-keys-minor-mode-map (kbd "M-z")      'ace-jump-zap-up-to-char)
(define-key my-keys-minor-mode-map (kbd "M-0")      'corral-parentheses-forward)
(define-key my-keys-minor-mode-map (kbd "M-9")      'corral-parentheses-backward)

(when (eq using-helm-or-ido 'ido)
  (define-key my-keys-minor-mode-map (kbd "M-x") 'smex))

;; Overview of the C-c prefix
;; C-c a * - Ag things
;; C-c e   - Eshell
;; C-c f * - File finding functions
;; C-c g * - Go places
;; C-c l * - Move in a lisp like fashion (by balanced expression)
;; C-c k * - Kill things structurally
;; C-c m * - Mu4e things
;; C-c o * - Org utilities
;; C-c s * - Substitute text
;; C-c v   - Version control for mercurial
(define-key my-keys-minor-mode-map (kbd "C-c a d") 'ag-dired-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c a p") 'ag-project-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c a r") 'ag-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c c")   'compile)
(define-key my-keys-minor-mode-map (kbd "C-c e")   'eshell)
(define-key my-keys-minor-mode-map (kbd "C-c i") 'get-init-file)
(define-key my-keys-minor-mode-map (kbd "C-c g l") 'ace-jump-line-mode)
(define-key my-keys-minor-mode-map (kbd "C-c g n") 'goto-line)
(define-key my-keys-minor-mode-map (kbd "C-c g o") 'occur)
;; (define-key my-keys-minor-mode-map (kbd "C-c k b") 'kill-braces)
;; (define-key my-keys-minor-mode-map (kbd "C-c k f") 'delete-frame)
;; (define-key my-keys-minor-mode-map (kbd "C-c k p") 'kill-parens)
;; (define-key my-keys-minor-mode-map (kbd "C-c l f") 'forward-sexp)
;; (define-key my-keys-minor-mode-map (kbd "C-c l j") 'backward-sexp)
;; (define-key my-keys-minor-mode-map (kbd "C-c l n") 'down-list)
;; (define-key my-keys-minor-mode-map (kbd "C-c l p") 'up-list)
(define-key my-keys-minor-mode-map (kbd "C-c n")   'highlight-symbol-next)
(define-key my-keys-minor-mode-map (kbd "C-c m i") 'jump-to-mailbox)
(define-key my-keys-minor-mode-map (kbd "C-c m u") 'mu4e-update-mail-and-index)
(define-key my-keys-minor-mode-map (kbd "C-c o a") 'org-agenda)
(define-key my-keys-minor-mode-map (kbd "C-c o b") 'org-switchb)
(define-key my-keys-minor-mode-map (kbd "C-c o c") 'org-capture)
(define-key my-keys-minor-mode-map (kbd "C-c o l") 'org-store-link)
(define-key my-keys-minor-mode-map (kbd "C-c p")   'highlight-symbol-prev)
(define-key my-keys-minor-mode-map (kbd "C-c s q") 'query-replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c s r") 'replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c s s") 'replace-string)
(define-key my-keys-minor-mode-map (kbd "C-c v v") 'magit-status)
(define-key my-keys-minor-mode-map (kbd "C-c v d") ''magit-dispatch-popup)

(global-set-key (kbd "RET") 'newline-and-indent)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(define-key my-keys-minor-mode-map (kbd "C-c d a") 'sp-beginning-of-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c d e") 'sp-end-of-sexp)

(define-key my-keys-minor-mode-map (kbd "C-<down>") 'sp-down-sexp)
(define-key my-keys-minor-mode-map (kbd "C-<up>") 'sp-up-sexp)
(define-key my-keys-minor-mode-map (kbd "M-<down>") 'sp-backward-down-sexp)
(define-key my-keys-minor-mode-map (kbd "M-<up>") 'sp-backward-up-sexp)

(define-key my-keys-minor-mode-map (kbd "C-c f") 'sp-forward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c j") 'sp-backward-sexp)

(define-key my-keys-minor-mode-map (kbd "C-c d n") 'sp-next-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c d p") 'sp-previous-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c d s") 'sp-forward-symbol)
(define-key my-keys-minor-mode-map (kbd "C-C d l") 'sp-backward-symbol)
(define-key my-keys-minor-mode-map (kbd "C-c d w") 'sp-copy-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c d t") 'sp-transpose-hybrid-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c k") 'sp-change-enclosing)

(define-key my-keys-minor-mode-map (kbd "C-c y f") 'sp-forward-slurp-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c b f") 'sp-forward-barf-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c y b") 'sp-backward-slurp-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c b b") 'sp-backward-barf-sexp)

(define-key my-keys-minor-mode-map (kbd "C-M-t") 'sp-transpose-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c d k") 'sp-kill-sexp)

(define-key my-keys-minor-mode-map (kbd "M-<backspace>") 'backward-kill-word)
(define-key my-keys-minor-mode-map (kbd "M-[" ) 'sp-backward-unwrap-sexp)
(define-key my-keys-minor-mode-map (kbd "M-]" ) 'sp-unwrap-sexp)


(define-key my-keys-minor-mode-map (kbd "C-c (") 'wrap-with-parens)
(define-key my-keys-minor-mode-map (kbd "C-c [") 'wrap-with-brackets)
(define-key my-keys-minor-mode-map (kbd "C-c {") 'wrap-with-braces)
(define-key my-keys-minor-mode-map (kbd "C-c '") 'wrap-with-single-quotes)
(define-key my-keys-minor-mode-map (kbd "C-c \"") 'wrap-with-double-quotes)
(define-key my-keys-minor-mode-map (kbd "C-c _" ) 'wrap-with-underscores)
(define-key my-keys-minor-mode-map (kbd "C-c `") 'wrap-with-back-quotes)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map) ; Note that this is global

(my-keys-minor-mode 1) ; Run the damn thing

(provide 'init-my-keys)
