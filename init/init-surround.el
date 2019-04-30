;; Now it's smartparens
(require-package 'smartparens)
(require 'smartparens-config)
(eval-after-load 'auctex '(require 'smartparens-latex))
(smartparens-global-strict-mode)
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

(defmacro def-pairs (pairs)
  "Define functions for pairing. PAIRS is an alist of (NAME . STRING)
conses, where NAME is the function name that will be created and
STRING is a single-character string that marks the opening character.

  (def-pairs ((paren . \"(\")
              (bracket . \"[\"))

defines the functions WRAP-WITH-PAREN and WRAP-WITH-BRACKET,
respectively."
  `(progn
     ,@(loop for (key . val) in pairs
             collect
             `(defun ,(read (concat
                             "wrap-with-"
                             (prin1-to-string key)
                             "s"))
                  (&optional arg)
                (interactive "p")
                (sp-wrap-with-pair ,val)))))

(def-pairs ((paren . "(")
            (bracket . "[")
            (brace . "{")
            (single-quote . "'")
            (double-quote . "\"")
            (back-quote . "`")))

(provide 'init-surround)
