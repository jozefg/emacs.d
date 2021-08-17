;; Set default font
(set-frame-font "Fira Code")
(set-face-font 'default "Fira Code")
(set-face-attribute
 'default nil
 :family "Fira Code"
 :height 140
 :weight 'normal
 :width 'normal)

;; Helpful function to blow up font for presentations
(defun presentation-sized-font ()
  (interactive)
  (text-scale-adjust 4))

(provide 'init-font)
