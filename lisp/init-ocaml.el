(require 'tuareg)
(define-key tuareg-mode-map (kbd "C-c C-l") 'tuareg-eval-buffer)

;; Merlin provides autocomplete, but it's an OCaml lib, so this
;; depends on it.
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'merlin)

;; Always turn on Merlin
(add-hook 'tuareg-mode-hook 'merlin-mode)
;; Enable auto-complete
(setq merlin-use-auto-complete-mode 'easy)
;; Use opam switch to lookup ocamlmerlin binary
(setq merlin-command 'opam)

;; Avoid carpal tunnel
(define-key tuareg-mode-map (kbd "C-:") 'completion-at-point)


(provide 'init-ocaml)
