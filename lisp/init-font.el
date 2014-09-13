;; Use source pro
(when (window-system)
  (set-frame-font "Source Code Pro")
  (set-face-attribute 'default nil :font "Source Code Pro" :height 130)
  (set-face-font 'default "Source Code Pro"))

;; Helpful function to blow up font for presentations
(defun presentation-sized-font ()
  (interactive)
  (text-scale-adjust 4))

(provide 'init-font)
