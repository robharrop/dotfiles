(provide 'markdown-config)
(add-sub-path "markdown-mode")
(autoload 'markdown-mode "markdown-mode.el"
	 "Major mode for editng Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
