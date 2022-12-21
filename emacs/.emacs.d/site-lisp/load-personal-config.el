;;; load-personal-config.el --- Provides a shortcut function to load the .emacs.d directory into a dired buffer
;;; Commentary:
;;; Code:

(defun my/load-personal-config ()
  "Opens ~/.emacs.d/ in a new dired buffer"
  (interactive)
  (dired "~/.emacs.d"))

(provide 'load-personal-config)
