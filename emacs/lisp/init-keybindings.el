;;; init-keybidings.el --- Keybinding and keymaps
;;; Commentary:
;;; Code:

;; Global Keybindings
(general-define-key "M-x" 'helm-M-x) ;; Use helm for M-x

;; Vim leader keybidings
(general-create-definer my-leader-def
  :prefix "SPC")
(my-leader-def
  :states 'normal
  :keymaps 'override
 ;; M-x shortcut
 "SPC" 'helm-M-x
 ;; w+ Window Movement
 "wh" 'windmove-left
 "wj" 'windmove-down
 "wk" 'windmove-up
 "wh" 'windmove-right
 ;; b+ Buffer management
 "bm" 'buffer-menu
 ;; f+ File management
 "ff" 'helm-find-files
 "fd" 'dired
 ;; g+ Git
 "gg" 'magit-status)

(provide 'init-keybindings)
