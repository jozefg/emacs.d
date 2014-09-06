;; package-install
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")

(when (not package-archive-contents)
  (package-refresh-contents))

;; el-get
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)

(defun require-package (package &optional require-name)
  (let ((req-name (if require-name
                      require-name
                      package)))
    (when (not (require req-name nil t))
      (package-install package)
      (require req-name))))

(defun try-require (package)
  (let ((res (ignore-errors (require package nil t))))
    (when (not res)
      (with-current-buffer "*scratch*"
        (end-of-buffer)
        (insert "Couldn't load " (symbol-name package) "\n")))))

(provide 'init-package)
