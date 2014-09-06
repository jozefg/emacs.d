(setq lexical-binding t)

(defun all-displayed-windows ()
  (interactive "")
  (let ((displayed (list)))
    (walk-windows (lambda (window)
                    (push (window-buffer window)
                          displayed)))
    displayed))

(defun usually-boring-p (buffer-name)
  (or (string-match "^\*helm" buffer-name)
      (string-match ".*\.org" buffer-name)
      (string-match "^\*Warnings" buffer-name)
      (string-match "^\*Quail" buffer-name)
      (string-match "^\*Compilation" buffer-name)
      (string-match "^\*Compile" buffer-name)
      (string-match "^\*Completions" buffer-name)
      (string-match "^\*monky" buffer-name)
      (string-match "^\*Help" buffer-name)
      (string-match "\*Calendar" buffer-name)))

(defun kill-useless-buffers ()
  "Remove buffers that helm and org-todo-agenda generate in spades"
  (interactive "")
  (let ((displayed-buffers (all-displayed-windows)))
    (dolist (buffer (buffer-list))
      (when (and (usually-boring-p (buffer-name buffer))
                 (not (member buffer displayed-buffers)))
          (kill-buffer buffer)))))

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
      (insert "#+TITLE: " name "\n\n"))
    ;; If we have multiple windows, switch and open notes
    (other-window 1)
    (switch-to-buffer buf)))

(defun match-paren (arg)
  "Go to the matching parenthesis."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t nil)))

(defun get-todo-file (filename)
  "Grab a todo file from my dropbox"
  (interactive (list
                (read-string "TODO name: ")))
  (find-file (concat "~/Dropbox/todo/" filename ".org")))

(defun rename-file-with-buffer (new-name)
  "Rename a buffer and it's underlying file to a new name"
  (interactive (list (read-string "Rename to: ")))
  (let ((file (buffer-file-name))
        (dir  (file-name-directory (buffer-file-name))))
    (rename-file file (concat dir new-name))
    (kill-buffer)
    (find-file (concat dir new-name))))


(provide 'init-util-fns)
