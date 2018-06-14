;;anaconda-mode
;; (add-hook 'python-mode-hook 'anaconda-mode)
(after-load 'company
  (add-hook 'python-mode-hook
            (lambda () (sanityinc/local-push-company-backend #'(company-anaconda
                                                           company-etags
                                                           company-dabbrev-code)))))


(provide 'wdq-init-python-mode)
