(require-package 'rust-mode)

(defun rust-compile (buffer)
  (interactive (list (buffer-name)))
  (compile (concat "rustc " buffer)))

(define-key rust-mode-map (kbd "C-c C-c") 'rust-compile)

(provide 'init-rust)
