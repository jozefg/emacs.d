(require-package 'monky)
(require-package 'magit)

(defun toggle-monky ()
  (interactive)
  (let ((buf (monky-find-status-buffer)))
    (if buf (kill-buffer buf)
      (monky-status))))

(provide 'init-vcs)
