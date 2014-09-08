;; I really like surround mode in Vim,
;; These packages are cobbled together to emulate the features
;; I liked.

; We can now highlight a region and hit
; an opening delimeter to wrap it.
(require-package 'wrap-region)
(wrap-region-global-mode t)

; Next is kill-delim which let's me kill
; delimited groups of things
(require-package 'delim-kill)

(defun kill-parens ()
  (interactive "")
  (delim-kill ?( ?) (point) nil))

(defun kill-braces ()
  (interactive "")
  (delim-kill ?{ ?} (point) nil))


(provide 'init-surround)
