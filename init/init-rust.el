(require-package 'rust-mode)
(require-package 'flymake-easy)
(require-package 'flymake-rust)

(add-hook 'rust-mode-hook 'flymake-rust-load)


(defun rust-compile (buffer)
  (interactive (list (buffer-name)))
  (compile (concat "rustc " buffer)))

(defun cargo-compile ()
  (interactive "")
  (compile "cargo build"))



(define-key rust-mode-map (kbd "C-c C-l") 'rust-compile)
(define-key rust-mode-map (kbd "C-c C-c") 'cargo-compile)

(provide 'init-rust)
