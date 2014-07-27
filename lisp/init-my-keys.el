;; Some useful functions I have keybindings for
(defun kill-useless-buffers ()
  "Remove buffers that helm and org-todo-agenda generate in spades"
  (interactive "")
  (dolist (buffer (buffer-list))
    (when (or (string-match "^\*helm"       (buffer-name buffer))
              (string-match "^[0-9]+?\.org" (buffer-name buffer)))
      (kill-buffer buffer))))

(defun get-init-file (s)
  "Grab the appropriate init-* file from my .emacs.d directory"
  (interactive (list
		(read-string "Init buffer (init.el): "
			     nil
			     nil
			     "init.el")))
  (if (string= s "init.el")
      (find-file         "~/.emacs.d/init.el")
      (find-file (concat "~/.emacs.d/lisp/" s))))

(defun smart-beginning-of-line ()
  "Moves to first character that's not whitespace"
  (interactive "^")
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

(defun new-org-notes-buffer (name)
  "Create an empty buffer with org-mode but no file"
  (interactive (list
		(read-string "Buffer Name (*notes*): " nil nil "*notes*")))
  (let ((buf (generate-new-buffer name)))
    ;; Setup the buffer
    (with-current-buffer buf
      (org-mode)
      (insert "#+TITLE: Notes\n\n"))
    ;; If we have multiple windows, switch and open notes
    (other-window 1)
    (switch-to-buffer buf)))
	       
;; Require packages I use in keybindings, note that require-package is "idempotent"
(require-package 'helm)
(require-package 'org-journal)
(require-package 'ag)

;; Minor mode for things I like
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

;; Normal keybindings I override to be things I prefer
(define-key my-keys-minor-mode-map (kbd "C-w") 'clipboard-kill-region)
(define-key my-keys-minor-mode-map (kbd "M-w") 'clipboard-kill-ring-save)
(define-key my-keys-minor-mode-map (kbd "C-y") 'clipboard-yank)
(define-key my-keys-minor-mode-map (kbd "C-a") 'smart-beginning-of-line)
(define-key my-keys-minor-mode-map (kbd "C-j") 'backward-char) ; ex-Vimmers hate me
(define-key my-keys-minor-mode-map (kbd "C-;") 'hippie-expand)

;; The C-c * series of commands, mostly helpful shortcuts
(define-key my-keys-minor-mode-map (kbd "C-c a") 'ag-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c b") 'backward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c c") 'kill-useless-buffers)
(define-key my-keys-minor-mode-map (kbd "C-c d") 'ag-dired-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c e") 'eshell)
(define-key my-keys-minor-mode-map (kbd "C-c f") 'forward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-c g") 'helm-do-grep)
(define-key my-keys-minor-mode-map (kbd "C-c i") 'get-init-file)
(define-key my-keys-minor-mode-map (kbd "C-c m") 'mu4e)
(define-key my-keys-minor-mode-map (kbd "C-c o") 'new-org-notes-buffer)
(define-key my-keys-minor-mode-map (kbd "C-c p") 'ag-projectregexp)
(define-key my-keys-minor-mode-map (kbd "C-c r") 'replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-c s") 'replace-string)
(define-key my-keys-minor-mode-map (kbd "C-c t") 'org-todo-list)
(define-key my-keys-minor-mode-map (kbd "C-c u") 'mu4e-update-mail-and-index)
(define-key my-keys-minor-mode-map (kbd "C-c v") 'monky-status)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1) ; Run the damn thing

(provide 'init-my-keys)
