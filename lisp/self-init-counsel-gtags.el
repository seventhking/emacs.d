;;; [self config]
(add-hook 'c-mode-hook 'counsel-gtags-mode)
(add-hook 'c++-mode-hook 'counsel-gtags-mode)
(add-hook 'lua-mode-hook 'counsel-gtags-mode)

(with-eval-after-load 'counsel-gtags
  (define-key counsel-gtags-mode-map (kbd "M-t") 'counsel-gtags-find-definition)
  (define-key counsel-gtags-mode-map (kbd "M-r") 'counsel-gtags-find-reference)
  (define-key counsel-gtags-mode-map (kbd "M-s") 'counsel-gtags-find-symbol)
  (define-key counsel-gtags-mode-map (kbd "M-,") 'counsel-gtags-go-backward))

;; `file-truename' MUST be used!
(setenv "GTAGSLIBPATH" (concat "/usr/local/include"
                               ":"
                               "/usr/include"
                               ))
;; cd /usr/local/include && MAKEOBJDIRPREFIX=~/obj gtags --objdir
(setenv "MAKEOBJDIRPREFIX" (file-truename "~/gtags-objs/"))
;; (setq company-backends '((company-dabbrev-code company-gtags)))

(provide 'self-init-counsel-gtags)
