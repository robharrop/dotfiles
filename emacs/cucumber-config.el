(provide 'cucumber-config)
(add-sub-path "cucumber-mode")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))