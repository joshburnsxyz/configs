;;; init-packages.el --- Emacs package manifest and configurations
;;; Commentary:

;;; Code:

;; Minibuffer extensions
(use-package helm
  :ensure t)

;; Evil mode - vim emulation
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) 
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))
(use-package evil-collection
  :ensure t
  :config
  (evil-collection-init))

(provide 'init-packages)
