(require-package 'org-journal)

(setq org-agenda-files '("~/Dropbox/journal/"
                         "~/Dropbox/todo/"
                         "~/Dropbox/schedule"
                         "~/Dropbox/notes"))
(custom-set-variables
  `(org-journal-dir ,(expand-file-name "~/Dropbox/journal/"))
  '(org-journal-time-format "")
  '(org-journal-file-format "%Y%m%d.org"))


(provide 'init-journal)
