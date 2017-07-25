(setq org-src-fontify-natively t)
(add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-mode-hook 'flyspell-mode)

(setq org-log-done 'time)

(setq org-directory "~/Dropbox/org")
;; Capture for taking notes
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-agenda-files (concat org-directory "/agenda-files.org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Dropbox/org/notes.org" "Tasks")
         "* TODO %?\n %i\n %a")
        ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
         "* %?\nEntered on %U\n %i\n %a")))

(provide 'init-org)
