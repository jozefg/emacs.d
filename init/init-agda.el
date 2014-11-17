;; Not sucky Agda highlighting
(custom-set-faces
 '(agda2-highlight-datatype-face ((t (:foreground "deep sky blue" :weight bold))))
 '(agda2-highlight-function-face ((t (:foreground "deep sky blue"))))
 '(agda2-highlight-postulate-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "DeepSkyBlue1"))))
 '(agda2-highlight-record-face ((t (:foreground "deep sky blue")))))

;; Load path and default faces
(custom-set-variables
 '(agda2-highlight-face-groups (quote default-faces))
 `(agda2-include-dirs (quote ("." ,(expand-file-name "~/agda-stdlib/src")))))


(put 'erase-buffer 'disabled nil)
(put 'upcase-region 'disabled nil)


(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))



(provide 'init-agda)
