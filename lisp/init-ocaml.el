(require-package 'tuareg)


(defun ocamlbuild (buffer)
  (interactive (list (buffer-name)))
  (compile (concat "ocamlbuild "
                   (substring buffer 0 -3)
                   ".cmo")))

;; Avoid carpal tunnel
(define-key tuareg-mode-map (kbd "C-c C-c") 'ocamlbuild)


(provide 'init-ocaml)
