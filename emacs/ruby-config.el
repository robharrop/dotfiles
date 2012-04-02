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

;; unicorn reload
(define-key global-map (kbd "C-c r")
  (lambda ()
    (interactive)
    (shell-command "ps -A | grep 'unicorn master' | grep -v grep | cut -d' ' -f1 | xargs kill -HUP"
                   "*shell-command-out*"
                   "*shell-command-err*")))