; Some useful functions I have keybindings for
(defun kill-useless-buffers ()
  (interactive "")
  (dolist (buffer (buffer-list))
    (when (or (string-match "^\*helm"       (buffer-name buffer))
              (string-match "^[0-9]+?\.org" (buffer-name buffer)))
      (kill-buffer buffer))))

(defun get-dot-file ()
  (interactive)
  (find-file "~/.emacs"))

(defun smart-beginning-of-line ()
  "Moves to first character that's not whitespace"
  (interactive "^")
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

;; Require packages I use in keybindings
(require-package 'helm)
(require-package 'org-journal)
(require-package 'ag)
;; Minor mode for things I like
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")
(define-key my-keys-minor-mode-map (kbd "C-w")   'clipboard-kill-region)
(define-key my-keys-minor-mode-map (kbd "\M-w")  'clipboard-kill-ring-save)
(define-key my-keys-minor-mode-map (kbd "C-y")   'clipboard-yank)
(define-key my-keys-minor-mode-map (kbd "C-c s") 'replace-string)
(define-key my-keys-minor-mode-map (kbd "C-c r") 'replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-a")   'smart-beginning-of-line)
(define-key my-keys-minor-mode-map (kbd "C-j")   'backward-char)
(define-key my-keys-minor-mode-map (kbd "C-c f") 'forward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c b") 'backward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c g") 'helm-do-grep)
(define-key my-keys-minor-mode-map (kbd "C-c t") 'org-todo-list)
(define-key my-keys-minor-mode-map (kbd "C-c a") 'ag)
(define-key my-keys-minor-mode-map (kbd "C-c f") 'ag-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c d") 'ag-dired-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c u") 'mu4e-update-mail-and-index)
(define-key my-keys-minor-mode-map (kbd "C-c m") 'mu4e)
(define-key my-keys-minor-mode-map (kbd "C-c c") 'kill-useless-buffers)
(define-key my-keys-minor-mode-map (kbd "C-c e") 'eshell)


(global-set-key (kbd "RET")   'newline-and-indent) ;; So this can be overrided

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1) ; Run the damn thing

(provide 'init-my-keys)
