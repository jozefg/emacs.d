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
		(read-string "Init buffer: "
			     nil
			     nil
			     "init.el")))
  (if (string= s "init.el")
      (find-file         "~/.emacs.d/init.el")
      (find-file (concat "~/.emacs.d/init/init-" s ".el"))))

(defun smart-beginning-of-line ()
  "Moves to first character that's not whitespace"
  (interactive "^")
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

(defun rename-file-with-buffer (new-name)
  "Rename a buffer and it's underlying file to a new name"
  (interactive (list (read-string "Rename to: ")))
  (let ((file (buffer-file-name))
        (dir  (file-name-directory (buffer-file-name))))
    (rename-file file (concat dir new-name))
    (kill-buffer)
    (find-file (concat dir new-name))))

(defun last-window ()
  (interactive "")
  (other-window -1))

(defun horizontal-to-vertical-split ()
  (interactive "")
  (other-window 1)
  (let ((name (buffer-name)))
    (delete-window)
    (split-window-right)
    (other-window 1)
    (switch-to-buffer name)
    (other-window 1)))

(defun strip-text-properties (txt)
  (set-text-properties 0 (length txt) nil txt) txt)

(defun upload-buffer (buffer)
  "Upload a file to transfer.sh and return the URL. Requires curl"
  (interactive (list (current-buffer)))
  (let* ((name (buffer-file-name buffer))
         (command (concat "curl --silent --upload-file "
                          name
                          " http://transfer.sh/"
                          (file-name-base name)))
         (url (shell-command-to-string command)))
    (message "Stored: %s" url)
    (push url kill-ring)))

(defun eval-replace-sexp (u)
    (interactive "P")
    (let ((value (eval (preceding-sexp))))
      (if u
        (progn (kill-sexp -1)
               (insert (format "%S" value)))
        (message "%S" value))))

(defun eww-view-buffer ()
  "View a buffer with eww"
  (interactive)
  (if buffer-file-name
      (eww-open-file buffer-file-name)
    (progn
      (let ((temp-file (make-temp-file "view.html")))
        (append-to-file 1 (buffer-size) temp-file)
        (eww-open-file temp-file)))))

(defun set-transient-bindings (binds)
  "Create a function to set a temporary keymap that will override
   all keys but vanish as soon as a key is pressed that doesn't
   belong in it. Particularly useful for things like zooming.
   Input should be a list of (keybinding . function)"

  (let ((keymap (make-sparse-keymap)))
    ; Setup the keymap
    (mapc (lambda (p) (define-key keymap (car p) (cdr p)))
          binds)
    (lambda () (set-transient-map keymap t))))

(defun bind-after-call (binds fun)
  "Create a function to setup a keymap after calling a function"
  (lexical-let ((setup-keymap (set-transient-bindings binds))
        (f fun))
    (lambda ()
      (interactive "")
      (funcall f)
      (setup-keymap))))

(defun swap (symbol-list)
  "Takes a list of symbols and swaps the values in the"
  (dolist (p symbol-list)
    (let ((backup (eval (car p))))
      (set (car p) (eval (cdr p)))
      (set (cdr p) backup))))

(provide 'init-util-fns)
