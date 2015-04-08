(setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
(autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)

(load-file "/usr/share/emacs24/site-lisp/proofgeneral/generic/proof-site.el")
(setq coq-prog-name "/usr/local/bin/coqtop")


(custom-set-variables
  '(coq-compile-before-require nil)
  '(proof-splash-enable nil)
  '(proof-three-window-enable t)
  '(proof-three-window-mode-policy (quote hybrid))
  '(proof-toolbar-enable nil))

(provide 'init-coq)
