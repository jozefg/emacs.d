;; Set default font
(set-face-attribute
 'default nil
 :family "Source Code Pro"
 :height 120
 :weight 'normal
 :width 'normal)

;; Helpful function to blow up font for presentations
(defun presentation-sized-font ()
  (interactive)
  (text-scale-adjust 4))

(provide 'init-font)
