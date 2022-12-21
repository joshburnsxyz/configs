;;; init-org --- Configure and customize org-mode
;;; Commentary:
;;; Code:

;; Org settings
(setq org-directory "~/org")

;; Initialize org-capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")))

(provide 'init-org)
