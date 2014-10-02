(require-package 'neotree)

(defun toggle-tree ()
  (interactive "")
  (let ((buf (get-buffer neo-buffer-name)))
    (if buf
        (progn (message "%s" "here") (kill-buffer buf))
        (neotree-toggle))))

(provide 'init-tree)
