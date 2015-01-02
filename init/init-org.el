(setq org-src-fontify-natively t)
(add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-mode-hook 'flyspell-mode)

(setq org-directory "~/Dropbox/org")

;; Capture for taking notes
(setq org-default-notes-file (concat org-directory "/notes.org"))

(setq org-capture-templates '())

(provide 'init-org)
