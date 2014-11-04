(require-package 'org-journal)

(setq org-agenda-files '("~/Dropbox/journal/"
                         "~/Dropbox/todo/"
                         "~/Dropbox/schedule"
                         "~/Dropbox/notes"))
(custom-set-variables
  '(org-journal-dir "/home/jozefg/Dropbox/journal/")
  '(org-journal-time-format "")
  '(org-journal-file-format "%Y%m%d.org"))


(provide 'init-journal)
