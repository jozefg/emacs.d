(defun make-font-not-awful (x)
  ;; Use source pro
  (when (window-system)
    (set-frame-font "Source Code Pro")
    (set-face-attribute 'default nil :font "Source Code Pro" :height 120)
    (set-face-font 'default "Source Code Pro")))

(push 'make-font-not-awful after-make-frame-functions)

;; Helpful function to blow up font for presentations
(defun presentation-sized-font ()
  (interactive)
  (text-scale-adjust 4))

(provide 'init-font)
