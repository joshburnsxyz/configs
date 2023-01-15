;; Typescript support for .tsx files
(use-package typescript-mode
  :ensure t
  :mode "\\.tsx?$")

;; Helper packages
(use-package emmet-mode :ensure t :hook typescript-mode)
(use-package tree-sitter :ensure t)
(use-package tree-sitter-langs :ensure t)
(use-package prettier-js :ensure t :hook (typescript-mode))

;; couldn't make it work with `use-package`, plain elisp instead
(require 'tree-sitter)
(require 'tree-sitter-langs)
(add-hook 'typescript-mode-hook #'tree-sitter-hl-mode)


(provide 'init-typescript)
