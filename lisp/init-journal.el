(require-package 'org-journal)

(setq org-agenda-files '("~/Dropbox/journal/"
                         "~/Dropbox/todo/"
                         "~/Dropbox/schedule"))
(custom-set-variables
  '(org-journal-dir "/home/jozefg/Dropbox/journal/")
  '(org-journal-file-format "%Y%m%d.org"))


(provide 'init-journal)
