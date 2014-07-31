(defun kill-useless-buffers ()
  "Remove buffers that helm and org-todo-agenda generate in spades"
  (interactive "")
  (dolist (buffer (buffer-list))
    (when (or (string-match "^\*helm"       (buffer-name buffer))
              (string-match "^[0-9]+?\.org" (buffer-name buffer))
              (string-match "\*monky"       (buffer-name buffer)))
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
	       
(provide 'init-util-fns)
