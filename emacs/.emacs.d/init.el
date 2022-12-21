;; Add lisp directory to load path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

;; Define the init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
;; Debugging
(setq debug-on-startup t)

;; Load modules (order is important)
(require 'init-ui)
(require 'init-elpa)
(require 'init-packages)
(require 'init-statusbar)
(require 'init-org)

(require 'load-personal-config)

;; Assign Keybindings last
(require 'init-keybindings)
