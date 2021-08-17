;; auctex is under the name auctex on elpa but provides
;; the symbol tex. No clue why..
(require-package 'auctex 'tex)
(require-package 'reftex)
(require-package 'auctex-latexmk)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-engine 'default)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)

(setq TeX-source-correlate-method 'synctex)
(setq TeX-PDF-mode t)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-interactive-mode nil)

(add-hook 'TeX-mode-hook (lambda () (setq TeX-command-extra-options "-shell-escape")))

(define-key reftex-mode-map (kbd "C-c g g") 'reftex-goto-label)

(auctex-latexmk-setup)

;; Previews are nice
(require-package 'latex-preview-pane)
;(add-hook 'LaTeX-mode-hook 'latex-preview-pane-mode)

(setq auctex-latexmk-inherit-TeX-PDF-mode t)

(provide 'init-latex)
