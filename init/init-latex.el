;; auctex is under the name auctex on elpa but provides
;; the symbol tex. No clue why..
(require-package 'auctex 'tex)
(require-package 'reftex)
(require-package 'auctex-latexmk)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-engine 'luatex)
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

(define-key reftex-mode-map (kbd "C-c g g") 'reftex-goto-label)

(auctex-latexmk-setup)

;; Previews are nice
(require-package 'latex-preview-pane)
;(add-hook 'LaTeX-mode-hook 'latex-preview-pane-mode)

(setq auctex-latexmk-inherit-TeX-PDF-mode t)

;; Pass shell-escape everywhere
;(custom-set-variables
; '(pdf-latex-command "~/.emacs.d/bin/latex"))

(provide 'init-latex)
