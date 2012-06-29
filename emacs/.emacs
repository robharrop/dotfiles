 ;; the basics
(line-number-mode 1)
(column-number-mode 1)
(ido-mode)

;; show linenumbers
(global-linum-mode 1)

;; turn off truncate line
(setq-default truncate-lines t)

;; basic text formatting gunk
(setq-default standard-indent 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default fill-column 72)

;binding for toggling whitespace mode
(global-set-key (kbd "C-c w") 'whitespace-mode)

;remove trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; line highlighting
(global-hl-line-mode 1)

;; store the base dir
(setq config-dir (file-name-directory
                  (file-truename
                   (or load-file-name buffer-file-name))))

;; setup temp and back file locations
(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
'(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))

;; allows configuration to add sub paths without worrying about
;; where the concrete path is
(defun add-sub-path (path)
  (add-to-list 'load-path
               (expand-file-name path
                                 config-dir)))

;; set up fonts
(cond
 ((and (string-match "linux" system-configuration) (eq window-system 'x))
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-16"))
 ((string-match "darwin" system-configuration)
  (set-face-attribute 'default nil :font "Menlo-16")))

;; add current directory to the load path
(add-to-list 'load-path config-dir)

;; load modules
(require 'color-theme-config)
(require 'cucumber-config)
(require 'lua-config)
(require 'markdown-config)
(require 'ruby-config)
(require 'smart-tab-config)
(require 'textmate-config)
(require 'yaml-config)
(require 'haskell-config)
(require 'clojure-config)
