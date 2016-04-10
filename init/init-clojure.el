(require-package 'clojure-mode)
(require-package 'cljsbuild-mode)
(require-package 'cider)
(require-package 'elein)
(add-hook clojure-mode-hook 'subword-mode)

(provide 'init-clojure)
