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
(use-package evil-nerd-commenter
  :ensure t
  :config
  (evilnc-default-hotkeys))

;; Telephone Line - Status bar
(use-package telephone-line
  :ensure t)

;; Projectile - Project Management
(use-package projectile
  :ensure t
  :config
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map))
(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

;; Which Key - Context-aware keybinding help
(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  (which-key-setup-side-window-bottom))

;; General - Keybinding engine
(use-package general
  :ensure t)

;; Company mode - Autocomplete
(use-package company
  :ensure t
  :config
  (global-company-mode))

;; LSP
(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

;; YASnippet - Snippets and text templating system
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))
(use-package yasnippet-snippets
  :ensure t
  :config
  (yas-reload-all))

;; Magit - Git porcelain
(use-package magit
  :ensure t)

(provide 'init-packages)
