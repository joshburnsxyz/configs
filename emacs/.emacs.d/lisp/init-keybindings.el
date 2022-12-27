;;; init-keybidings.el --- Keybinding and keymaps
;;; Commentary:
;;; Code:

;; Load functions from site-lisp
(require 'load-personal-config)
(require 'reindent-buffer)
(require 'uniquify-lines)

;; Global Keybindings
(general-define-key "M-x" 'helm-M-x) ;; Use helm for M-x
(general-define-key "M-/" 'my/reindent-buffer) ;; Shortcut for reindent-buffer plugin

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
 ;; p+ Project
 "pp" 'helm-projectile-switch-project
 "pa" 'projectile-add-known-project
 "pf" 'helm-projectile-find-file
 "pd" 'helm-projectile-find-dir
 ;; g+ Git
 "gg" 'magit-status
 ;; t+ Toggles
 "ts" 'prettify-symbols-mode
 "tw" 'writeroom-mode
 "tl" 'global-display-line-numbers-mode
 ;; x+ Misc.
 "xt" 'term
 "xu" 'my/uniquify-all-lines-buffer
 "xC" 'my/load-personal-config
 "xT" 'load-theme)

(provide 'init-keybindings)
