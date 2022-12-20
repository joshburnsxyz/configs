;;; init-keybidings.el --- Keybinding and keymaps
;;; Commentary:
;;; Code:

;; Override M-x with Helm
(global-set-key (kbd "M-x") 'helm-M-x)

(provide 'init-keybindings)
