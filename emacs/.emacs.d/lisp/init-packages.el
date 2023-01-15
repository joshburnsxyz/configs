;;; init-packages.el --- Emacs package manifest and configurations
;;; Commentary:

;;; Code:

;; Minibuffer extensions
(use-package helm
  :config
  (helm-mode 1))

;; Evil mode - vim emulation
(use-package evil
  :init
  (setq evil-want-integration t) 
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))
(use-package evil-collection
  :config
  (evil-collection-init))
(use-package evil-nerd-commenter
  :config
  (evilnc-default-hotkeys))

;; Telephone Line - Status bar
(use-package telephone-line)

;; Projectile - Project Management
(use-package projectile
  :config
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map))
(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

;; Which Key - Context-aware keybinding help
(use-package which-key
  :config
  (which-key-mode)
  (which-key-setup-side-window-bottom))

;; General - Keybinding engine
(use-package general)

;; Company mode - Autocomplete
(use-package company
  :config
  (global-company-mode))

;; LSP
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

;; YASnippet - Snippets and text templating system
(use-package yasnippet
  :config
  (yas-global-mode 1))
(use-package yasnippet-snippets
  :config
  (yas-reload-all))

;; Magit - Git porcelain
(use-package magit)

;; VSCode Icons 
(use-package vscode-icon
  :commands (vscode-icon-for-file))

;; Dirvish - dired replacement
(use-package dirvish
  :config
  (dirvish-override-dired-mode)
  (setq dirvish-attributes
      '(vc-state subtree-state vscode-icon collapse file-size)))

;; Ace-Link - Bindings to follow links in org-mode, help buffers, etc.
(use-package ace-link
  :config
  (ace-link-setup-default))

;; Ace-Jump - fast/direct cursor movement
(use-package ace-jump-mode)

;; Smartparens - Minor mode for dealing with parens pairs
(use-package smartparens
  :hook (prog-mode . ace-jump-mode)
  :config
  (require 'smartparens-config))

;; Dimmer - Enhance focus by dimming inactive buffers
(use-package dimmer
  :config
  (dimmer-configure-which-key)
  (dimmer-configure-helm)
  (dimmer-mode t))

;; RestClient - HTTP Rest client inside of Emacs.
(use-package restclient)

;; Org Bullets - Pretty bullets in org mode
(use-package org-bullets
  :hook (org-mode . (lambda () (org-bullets-mode 1))))

;; Writeroom Mode - Distraction free writing mode for prose
(use-package visual-fill-column)
(use-package writeroom-mode)

;; Kaolin Themes - Theme package
(use-package kaolin-themes)

;; Page Break Lines - Display form feeds as rules
(use-package page-break-lines)

;; All The Icons
(use-package all-the-icons
  :if (display-graphic-p))

;; Dashboard
(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

;; NeoTree - File tree browser
(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

(provide 'init-packages)
