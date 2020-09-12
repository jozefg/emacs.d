;; Now it's smartparens
(require-package 'smartparens)
(require 'smartparens-config)
(eval-after-load 'auctex '(require 'smartparens-latex))
(smartparens-global-mode)
(show-smartparens-global-mode t)

(dolist (key '([remap delete-char]
               [remap delete-forward-char]))

  (define-key smartparens-strict-mode-map key
    '(menu-item "maybe-sp-delete-char" nil
                :filter (lambda (&optional _)
                          (unless (looking-at-p "[[:space:]\n]")
                            #'sp-delete-char)))))


(dolist (key '([remap backward-delete-char-untabify]
               [remap backward-delete-char]
               [remap delete-backward-char]))

  (define-key smartparens-strict-mode-map key
    '(menu-item "maybe-sp-backward-delete-char" nil
                :filter (lambda (&optional _)
                          (unless (looking-back "[[:space:]\n]" 1)
                            #'sp-backward-delete-char)))))

(provide 'init-surround)
