(require-package 'js2-mode)
(require-package 'js-comint)

(setenv "NODE_NO_READLINE" "1")
(setq inferior-js-program-command "nodejs --interactive")

(add-hook 'js2-mode-hook '(lambda () 
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
			    (local-set-key "\C-cC-l" 'js-load-file-and-go)))

(provide 'init-js)
