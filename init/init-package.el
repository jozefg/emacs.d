;; package-install
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")

(when (not package-archive-contents)
  (package-refresh-contents))

(defun require-package (package &optional require-name)
  (when (not (package-installed-p package))
    (package-install package))
  (require (or require-name package)))

(defun try-require (package)
  (let ((res (ignore-errors (require package nil t))))
    (when (not res)
      (with-current-buffer "*scratch*"
        (end-of-buffer)
        (insert "Couldn't load " (symbol-name package) "\n")))))

(provide 'init-package)
