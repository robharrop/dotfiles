(provide 'ruby-config)
(add-to-list 'auto-mode-alist '("Vagrantfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("buildfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pp$" . ruby-mode))

(add-sub-path "rhtml-mode")
(require 'rhtml-mode)
