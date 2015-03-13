(setq twelf-root "~/twelf/")
(load (concat twelf-root "emacs/twelf-init.el"))

(defun twelf-toggle-unsafe ()
  (interactive)
  (setq twelf-unsafe (not twelf-unsafe)))

(provide 'init-twelf)
