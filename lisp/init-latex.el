;; auctex is under the name auctex on elpa but provides
;; the symbol tex. No clue why.. but that's why I've
;; inlined require-package here.
(require-package 'auctex 'tex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq TeX-PDF-mode t)


;; Previews are nice
(require-package 'latex-preview-pane)
(add-hook 'LaTeX-mode-hook 'latex-preview-pane-mode)

;; Pass shell-escape everywhere
(custom-set-variables
 '(pdf-latex-command "~/.emacs.d/bin/latex"))

(eval-after-load "tex"
  '(setcdr (assoc "LaTeX" TeX-command-list)
          '("%`%l%(mode) -shell-escape%' %t"
          TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX")))

(provide 'init-latex)
