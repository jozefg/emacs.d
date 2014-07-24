(require-package 'markdown-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'auto-fill-mode)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(provide 'init-markdown)
