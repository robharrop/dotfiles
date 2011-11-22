 ;; the basics
(line-number-mode 1)
(column-number-mode 1)

;; show linenumbers
(global-linum-mode 1)

;; turn off truncate line
(setq-default truncate-lines t)

;; basic text formatting gunk
(setq standard-indent 4)
(setq indent-tabs-mode nil)
(setq-default fill-column 72)

;; line highlighting
(global-hl-line-mode 1)

;; allows configuration to add sub paths without worrying about
;; where the concrete path is
(defun add-sub-path (path)
  (add-to-list 'load-path 
	       (expand-file-name path
				 (file-name-directory (or load-file-name (buffer-file-name))))))


;; store the base dir
(setq config-dir (file-name-directory (or load-file-name (buffer-file-name))))

;; set up fonts
(cond
 ((and (string-match "linux" system-configuration) (eq window-system 'x))
    (set-face-attribute 'default nil :font "DejaVu Sans Mono-16"))
 ((string-match "darwin" system-configuration)
   (set-face-attribute 'default nil :font "Menlo-16")))

;; add current directory to the load path
(add-to-list 'load-path config-dir)

;; load modules
(require 'lua-config)
(require 'ruby-config)