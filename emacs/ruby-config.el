(provide 'ruby-config)
(add-to-list 'auto-mode-alist '("Vagrantfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("buildfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pp$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))

;; rhtml-mode
(add-sub-path "rhtml-mode")
(require 'rhtml-mode)

;; rvm-mode
(add-sub-path "rvm-mode")
(require 'rvm)
(rvm-use-default)

;; yari
(add-sub-path "yari-mode")
(require 'yari)

(defun ri-bind-key ()
  (local-set-key (kbd "C-c r") 'yari))
(add-hook 'ruby-mode-hook 'ri-bind-key)