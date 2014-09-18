(require-package 'tuareg)


(defun ocamlbuild (buffer)
  (interactive (list (buffer-name)))
  (compile (concat "ocamlbuild "
                   (substring buffer 0 -3)
                   ".cmo")))

;; Merlin provides autocomplete, but it's an OCaml lib, so this
;; depends on it.
(setq opam-share
      (substring (shell-command-to-string "opam config var share 2> /dev/null")
                 0
                 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'merlin)

;(add-hook 'tuareg-mode-hook 'merlin-mode) ; Always turn on Merlin
;(setq merlin-use-auto-complete-mode 'easy) ; Enable auto-complete
(setq merlin-command 'opam) ; Use opam switch to lookup ocamlmerlin binary

;; Avoid carpal tunnel
(define-key tuareg-mode-map (kbd "C-c C-c") 'ocamlbuild)


(provide 'init-ocaml)
