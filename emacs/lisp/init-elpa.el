;;; init-elpa.el --- Settings and helpers for package.el
;;; Commentary:
;;; Code:

(require 'package)
(require 'cl-lib)

;; Init package.el
(setq package-enable-at-startup nil)
(package-initialize)

;; use-package to simplify the config file
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)o

(provide 'init-elpa)
