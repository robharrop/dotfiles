(provide 'haskell-config)
(load (concat config-dir "haskell-mode/haskell-site-file.el"))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
