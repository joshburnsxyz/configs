;;; init-ui.el --- Configuration and UI tweaks

;; Keyboard-centric user interface
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

;; Set font
(add-to-list 'default-frame-alist '(font . "FuraMono Nerd Font Mono" ))
(set-face-attribute 'default t :font "FuraMono Nerd Font Mono" :height 140 )

;; Set window dimensions
(when window-system (set-frame-size (selected-frame) 97 46))

(provide 'init-ui)
