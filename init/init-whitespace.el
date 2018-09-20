(require 'whitespace)

;; Death to tabs.
(setq-default indent-tabs-mode nil)
(setq-default x-stretch-cursor t)
(setq tab-stop-list (number-sequence 4 120 4))

;; No trailing space either!
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun toggle-deleting-trailing-whitespace ()
  (interactive)
  (if (= (length before-save-hook) 0)
      (add-hook 'before-save-hook 'delete-trailing-whitespace)
    (setq before-save-hook nil)))

(setq whitespace-line-column 100) ; This is the default value, but I tweak a lot
(setq-default fill-column whitespace-line-column)
(setq whitespace-style '(face tabs lines-tail))

(global-whitespace-mode 1) ; Judgement everywhere.

(setq require-final-newline t)

(provide 'init-whitespace)
