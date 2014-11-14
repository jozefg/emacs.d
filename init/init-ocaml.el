;; Tuareg and friends
(require-package 'tuareg)
(require-package 'utop)

(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
                ("\\.topml$" . tuareg-mode))
              auto-mode-alist))

(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
(add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)
(add-hook 'tuareg-mode-hook 'merlin-mode)

;; merlin
(require-package 'merlin)

(setq opam-share
      (substring (shell-command-to-string "opam config var share") 0 -1))

(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

(add-hook 'tuareg-mode-hook 'merlin-mode) ; Enable Merlin for ML buffers
(set-face-background 'merlin-type-face "#88FF44")

;; Avoid carpal tunnel
(defun corebuild (buffer)
  (interactive (list (buffer-name)))
  (compile (concat "corebuild "
                   (substring buffer 0 -3)
                   ".cmx")))

(define-key tuareg-mode-map (kbd "C-c C-c") 'corebuild)

(provide 'init-ocaml)
