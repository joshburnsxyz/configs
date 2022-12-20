;;; init-packages.el --- Emacs package manifest and configurations
;;; Commentary:

;;; Code:

;; Minibuffer extensions
(use-package helm
  :ensure t)

;; Evil mode - vim emulation
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(provide 'init-packages)
