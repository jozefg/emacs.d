;; auctex is under the name auctex on elpa but provides
;; the symbol tex. No clue why.. but that's why I've
;; inlined require-package here.
(require-package 'auctex 'tex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq TeX-PDF-mode t)

;; Previews are nice
(require-package 'latex-preview-pane)
(provide 'init-latex)
