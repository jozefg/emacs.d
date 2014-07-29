;; Delete all whitespace in a group, not just one
(require-package 'hungry-delete)
(global-hungry-delete-mode)

(defun no-global-hungry-delete-mode ()
  (global-hungry-delete-mode -1))

(when delete-selection-mode
  (add-hook 'activate-mark-hook    'no-global-hungry-delete-mode)
  (add-hook 'deactivate-mark-hook  'global-hungry-delete-mode))
	      

(provide 'init-delete)
