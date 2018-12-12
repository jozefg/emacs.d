(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

;; Not sucky Agda highlighting
(custom-set-faces
 '(agda2-highlight-catchall-clause-face ((t (:background "dim gray"))))
 '(agda2-highlight-coverage-problem-face ((t (:background "magenta"))))
 '(agda2-highlight-datatype-face ((t (:foreground "deep sky blue" :weight bold))))
 '(agda2-highlight-function-face ((t (:foreground "deep sky blue"))))
 '(agda2-highlight-postulate-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "DeepSkyBlue1"))))
 '(agda2-highlight-record-face ((t (:foreground "deep sky blue"))))
 '(agda2-highlight-unsolved-constraint-face ((t (:background "dark orange"))))
 '(agda2-highlight-unsolved-meta-face ((t (:background "dark orange")))))

(put 'erase-buffer 'disabled nil)
(put 'upcase-region 'disabled nil)

(provide 'init-agda)
