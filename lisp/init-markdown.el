(require-package 'markdown-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'auto-fill-mode)
(add-hook 'markdown-mode-hook 'pandoc-mode)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'"       . markdown-mode))

(define-key markdown-mode-map (kbd "C-c C-w") 'count-words)

(provide 'init-markdown)
