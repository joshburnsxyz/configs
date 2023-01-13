;; Stop Emacs from creating backup files
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

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
(require 'init-dashboard)

;; Assign Keybindings last
(require 'init-keybindings)
