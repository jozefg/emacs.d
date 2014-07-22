(global-font-lock-mode 1)
(when (window-system)
  (set-frame-font "Source Code Pro")
  (set-face-attribute 'default nil :font "Source Code Pro" :height 130)
  (set-face-font 'default "Source Code Pro"))

(provide 'init-font)
