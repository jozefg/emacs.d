(require-package 'tuareg)
(require-package 'opam)
(require-package 'dune)
(require-package 'utop)

(add-hook
 'tuareg-mode-hook
 (lambda ()
   (add-hook 'before-save-hook 'ocp-indent-buffer nil t)))

(provide 'init-ocaml)
