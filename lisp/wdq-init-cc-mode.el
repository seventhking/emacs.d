;;;[cc-mode]

;;set google c style
(require-package 'google-c-style)

(add-hook 'c-mode-common-hook 'google-set-c-style)

;;open .h file with c++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'wdq-init-cc-mode)
