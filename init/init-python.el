(setq py-python-command        "python3")
(setq python-shell-interpreter "python3")
(setq python-python-command    "python3")

(require-package 'pyflakes)
(require-package 'pydoc)
(require-package 'pep8)

(defun pydoc-symbol-at-point (s)
  (interactive (list
                (read-string (concat "Name of thing (" (word-at-point) "): ")
                             ""
                             nil
                             (word-at-point))))
  (pydoc s))

(provide 'init-python)
