(provide 'haskell-config)
(load (concat config-dir "haskell-mode/haskell-site-file.el"))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;; ;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(remove-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(remove-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)
(defun my-haskell-mode-hook ()
   (haskell-indentation-mode -1) ;; turn off, just to be sure
   (haskell-indent-mode 1)       ;; turn on indent-mode
   )
