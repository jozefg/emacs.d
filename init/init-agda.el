(load-file (let ((coding-system-for-read 'utf-8))
             (shell-command-to-string "agda-mode locate")))
(setq auto-mode-alist (cons '("\\.lagda.md$" . agda2-mode) auto-mode-alist))
(provide 'init-agda)
