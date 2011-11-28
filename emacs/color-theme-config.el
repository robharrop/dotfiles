(provide 'color-theme-config)

(add-sub-path "color-theme")
(add-sub-path "color-theme-solarized")

(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-initialize)

;; theme management
(setq ct-dark 'color-theme-solarized-dark)
(setq ct-light 'color-theme-solarized-light)

(setq current-color-theme ct-dark)
(funcall current-color-theme)

(defun toggle-color-theme ()
  "Toggle the colour theme between light and dark"
  (interactive)
  (setq current-color-theme 
   (if (eq current-color-theme ct-dark) ct-light ct-dark))
  (funcall current-color-theme))

(global-set-key (kbd "<f8>") 'toggle-color-theme)