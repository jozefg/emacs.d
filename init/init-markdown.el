(require-package 'markdown-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)
(add-hook 'markdown-mode-hook 'auto-fill-mode)
(add-hook 'markdown-mode-hook 'pandoc-mode)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'"       . markdown-mode))

;; Some helpful functions for going from
;; filled paragraphs to a system where we don't
;; want manual break. Like Word or Libre Office
(defun unfill-paragraph ()
  (interactive "")
  (let ((fill-column most-positive-fixnum))
    (fill-paragraph nil)))

(defun apply-to-paragraphs (fun)
  (interactive "")
  (save-excursion
    (beginning-of-buffer)
    (let ((old-point -1))
      (while (not (eq (point) old-point))
        (setq old-point (point))
        (funcall fun)
        (forward-paragraph)))))

(defun unfill-buffer ()
  (interactive)
  (apply-to-paragraphs #'unfill-paragraph))

(defun fill-buffer ()
  (interactive)
  (apply-to-paragraphs 'fill-paragraph))

(define-key markdown-mode-map (kbd "C-c C-w") 'count-words)
(define-key markdown-mode-map (kbd "C-c C-j") 'unfill-buffer)
(define-key markdown-mode-map (kbd "C-c C-f") 'fill-buffer)

(provide 'init-markdown)
