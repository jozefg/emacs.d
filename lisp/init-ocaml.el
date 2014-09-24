(require-package 'tuareg)


(defun ocamlbuild (buffer)
  (interactive (list (buffer-name)))
  (compile (concat "corebuild "
                   (substring buffer 0 -3)
                   ".cmx")))

;; Avoid carpal tunnel
(define-key tuareg-mode-map (kbd "C-c C-c") 'ocamlbuild)


(provide 'init-ocaml)
