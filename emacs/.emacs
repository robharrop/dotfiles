;; the basics
(line-number-mode 1)
(column-number-mode 1)

;; show linenumbers
(global-linum-mode 1)

;; allows configuration to add sub paths without worrying about
;; where the concrete path is
(defun add-sub-path (path)
  (add-to-list 'load-path 
	       (expand-file-name path
				 (file-name-directory (or load-file-name (buffer-file-name))))))


;; store the base dir
(setq config-dir (file-name-directory (or load-file-name (buffer-file-name))))
(message config-dir)

;; add current directory to the load path
(add-to-list 'load-path config-dir)
(message "about load lua")
(require 'lua-config)
(message "loaded lua")