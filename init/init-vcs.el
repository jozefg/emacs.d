(require-package 'monky)
(require-package 'magit)
(setq magit-last-seen-setup-instructions "1.4.0")

(setq monky-process-type 'cmdserver)

(defun toggle-monky ()
  (interactive)
  (let ((buf (monky-find-status-buffer)))
    (if (not buf) (monky-status)
      (progn
        (walk-windows
         (lambda (win)
           (when (eq (window-buffer win) buf)
             (delete-window win))))
        (kill-buffer buf)))))

(provide 'init-vcs)
