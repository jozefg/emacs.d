;; (require-package 'proof-general 'proof)

(setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
(autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)

(setq coq-prog-name "/home/jozefg/.opam/4.06.1/bin/coqtop")

(provide 'init-coq)
