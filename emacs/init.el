;; Add lisp directory to load path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Point to custom.el file
(setq custom-file (locate-user-emacs-file "custom.el"))

;; Debugging
(setq debug-on-startup t)

;; Load modules
(require 'init-ui)
(require 'init-elpa)
