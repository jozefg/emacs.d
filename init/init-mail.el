(require 'mu4e) ;; No fancy require since this requires downloading
                ;; and building mu and mu4e The path for this is added
                ;; in init-elpa

;; default
(setq mu4e-maildir "~/Maildir")
(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder   "/[Gmail].Sent Mail")
(setq mu4e-trash-folder  "/[Gmail].Trash")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)
(setq mu4e-maildir-shortcuts
    '( ("/INBOX"               . ?i)
       ("/[Gmail].Sent Mail"   . ?s)
       ("/[Gmail].Trash"       . ?t)
       ("/[Gmail].All Mail"    . ?a)))

(setq mu4e-get-mail-command "offlineimap")
(setq
   user-mail-address my-email
   user-full-name  my-name)

(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
   starttls-use-gnutls t
   smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
   smtpmail-auth-credentials
     '(("smtp.gmail.com" 587 my-smtp-server nil))
   smtpmail-default-smtp-server "smtp.gmail.com"
   smtpmail-smtp-server "smtp.gmail.com"
   smtpmail-smtp-service 587)

(setq message-kill-buffer-on-exit t)

(setq
   mu4e-get-mail-command "offlineimap"   ;; or fetchmail, or ...
   mu4e-update-interval 300)             ;; update every 5 minutes

(defun jump-to-mailbox ()
  (interactive "")
  (mu4e)
  (mu4e~headers-jump-to-maildir "/INBOX"))


(provide 'init-mail)
