(provide 'clojure-config)

(add-sub-path "paredit-mode")
(add-sub-path "clojure-mode")

(require 'clojure-mode)
(require 'paredit)

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)
