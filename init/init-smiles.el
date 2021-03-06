(require-package '2048-game)
(require-package 'nyan-mode)
(nyan-mode 1)

(setq +nyan-cat-image-inverse+        "~/.emacs.d/nyan-imgs/nyan.xpm"
      +nyan-rainbow-image-inverse+    "~/.emacs.d/nyan-imgs/rainbow.xpm"
      +nyan-outerspace-image-inverse+ "~/.emacs.d/nyan-imgs/outerspace.xpm")
(setq +nyan-cat-image-backup+        (concat +nyan-directory+ "img/nyan.xpm")
      +nyan-rainbow-image-backup+    (concat +nyan-directory+ "img/rainbow.xpm")
      +nyan-outerspace-image-backup+ (concat +nyan-directory+ "img/outerspace.xpm"))

(defun original-nyan-cat ()
  (interactive)
  (setq +nyan-cat-image+        +nyan-cat-image-backup+
        +nyan-rainbow-image+    +nyan-rainbow-image-backup+
        +nyan-outerspace-image+ +nyan-outerspace-image-backup+)

  (nyan-mode -1)
  (nyan-mode 1))

(defun inverse-nyan-cat ()
  (interactive)
  (setq +nyan-cat-image+        +nyan-cat-image-inverse+
        +nyan-rainbow-image+    +nyan-rainbow-image-inverse+
        +nyan-outerspace-image+ +nyan-outerspace-image-inverse+)

  (nyan-mode -1)
  (nyan-mode 1))

;; Sometimes you just need an adorable picture.
(defun get-next-cute ()
  "Grab the first /r/aww url from the aww page"
  (interactive)
  (let ((new-buffer (find-file "~/Downloads/.aww"))
        (image-url  nil))
    (with-current-buffer new-buffer
      (while (not (looking-at "[a-zA-Z0-9]*[0-9][a-zA-Z0-9]*"))
        (search-forward-regexp "href=\"/r/aww/"))
      (setq image-url (strip-text-properties (match-string 0))))
    (kill-buffer new-buffer)
    (let ((full-url (concat "http://www.imgur.com/r/aww/" image-url)))
      (when (called-interactively-p) (message "%s" full-url))
      full-url)))

(defun cheer-me-up ()
  "Open a random adorable picture"
  (interactive)
  (save-excursion
    (shell-command "wget -q http://www.imgur.com/r/aww -r -q -O ~/Downloads/.aww")
    (browse-url (get-next-cute))
    (delete-file "~/Downloads/.aww")
    (message "")))

(provide 'init-smiles)
