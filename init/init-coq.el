(require-package 'proof-general)
(require-package 'company-coq)

(add-hook 'coq-mode-hook #'company-coq-mode)
(setq company-coq-prettify-symbols nil)

(setq coq-prog-name "/home/jozefg/.opam/4.07.1/bin/coqtop")
(setq-default coq-highlight-hyps-bg "black")


(provide 'init-coq)
