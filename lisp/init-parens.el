;; Highlight parentheses in a pretty manner
(require-package 'highlight-parentheses)

;; Pretty parens everywhere
(define-globalized-minor-mode global-highlight-parens highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode 1)))

(global-highlight-parens 1)

(provide 'init-parens)
