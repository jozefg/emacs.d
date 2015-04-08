(require-package '2048-game)
(require-package 'nyan-mode)
(nyan-mode 1)

;; Sometimes you just need an adorable picture.
(defun get-next-cute ()
  "Grab the first /r/aww url from the aww page"
  (interactive)
  (let ((new-buffer (find-file "~/Downloads/.aww"))
        (image-url  nil))
    (with-current-buffer new-buffer
      (search-forward "href=\"/r/aww/")
      (looking-at "[a-zA-Z0-9]*")
      (setq image-url (strip-text-properties (match-string 0))))
    (kill-buffer new-buffer)
    (let ((full-url (concat "http://www.imgur.com/r/aww/" image-url)))
      (when (called-interactively-p) (message "%s" full-url))
      full-url)))

(defun cheer-me-up ()
  "Open a random adorable picture"
  (save-excursion
    (interactive)
    (shell-command "wget -q http://www.imgur.com/r/aww -r -q -O ~/Downloads/.aww")
    (browse-url (get-next-cute))
    (delete-file "~/Downloads/.aww")
    (message "")))

(provide 'init-smiles)
