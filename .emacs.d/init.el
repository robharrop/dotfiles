;; el-get setup
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; OSX configuration
(defun osx-p ()
  (string-match "apple-darwin" system-configuration))

(when (osx-p)
  (setq mac-allow-anti-aliasing t)

  ;; window system only
  (when (display-graphic-p)
    (set-face-font 'default "Inconsolata-18")))

;; package configuration
(setq
 el-get-sources
 '(clojure-mode
   color-theme
   color-theme-solarized
   enh-ruby-mode

   (:name ag
      :after (progn
           (global-set-key (kbd "<f6>") 'ag-project)))

   (:name auto-complete
      :after (progn
           (ac-config-default)
           (setq ac-ignore-case nil)
           (global-auto-complete-mode t)
           (add-to-list 'ac-modes 'enh-ruby-mode)))

   (:name magit
      :after (progn
           (global-set-key (kbd "C-x C-z") 'magit-status)))

   (:name projectile
      :after (progn
           (global-set-key (kbd "s-p") 'projectile-find-file)))

   el-get))

(setq my:el-get-packages
      (loop for src in el-get-sources collect (el-get-source-name src)))

(el-get 'sync my:el-get-packages)

;; line/column handling
(line-number-mode 1)
(column-number-mode 1)
(setq-default fill-column 72)
(setq-default indent-tabs-mode nil)
(setq-default standard-indent 2)
(setq-default tab-width 2)
(global-hl-line-mode 1)
(global-linum-mode 1)

;; ui setup
(tooltip-mode -1)
(tool-bar-mode -1)

;; whitespace
(require 'whitespace)
(setq-default whitespace-line-column 72)
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; colours
(setq theme-dark 'color-theme-solarized-dark)
(setq theme-light 'color-theme-solarized-light)
(setq current-theme theme-dark)
(funcall current-theme)

(defun toggle-color-theme ()
  "Toggle the color theme between the light and dark themes"
  (interactive)
  (setq current-theme
        (if (eq current-theme theme-dark) theme-light theme-dark))
  (funcall current-theme))

(global-set-key (kbd "<f8>") 'toggle-color-theme)

;; ido
(ido-mode)
