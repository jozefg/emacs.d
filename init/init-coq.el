(setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
(autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)

(load "~/.emacs.d/lisp/PG/generic/proof-site")
(setq coq-prog-name "/home/jozefg/.opam/4.06.0/bin/coqtop")


(custom-set-variables
  '(coq-compile-before-require nil)
  '(proof-splash-enable nil)
  '(proof-three-window-enable t)
  '(proof-three-window-mode-policy (quote hybrid))
  '(proof-toolbar-enable nil))

(provide 'init-coq)
