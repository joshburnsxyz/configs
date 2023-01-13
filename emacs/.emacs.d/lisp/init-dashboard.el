(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))

;; Set the title
(setq dashboard-banner-logo-title "JoshBurnsXYZ Emacs")
;; Set the banner
(setq dashboard-startup-banner '1)

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)


(provide 'init-dashboard)
