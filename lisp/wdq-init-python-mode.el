;;anaconda-mode
;; (add-hook 'python-mode-hook 'anaconda-mode)
(require 'lsp-mode)
(require 'lsp-python)

;; (after-load 'company
;;   (add-hook 'python-mode-hook
;;             (lambda () (sanityinc/local-push-company-backend #'(company-anaconda
;;                                                            company-etags
;;                                                            company-dabbrev-code)))))
(after-load 'python
  (add-hook 'python-mode-hook #'lsp-python-enable)
  (after-load 'company
    (add-hook 'python-mode-hook (lambda ()
                                  (sanityinc/local-push-company-backend 'company-lsp)))))



(provide 'wdq-init-python-mode)
