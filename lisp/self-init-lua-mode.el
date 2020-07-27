;; (defun my-lua-mode-setup ()
;;   (interactive)
;;   (unless (is-buffer-file-temp)
;;     (setq-local imenu-generic-expression '(("Variable" "^ *\\([a-zA-Z0-9_.]+\\) *= *{ *[^ ]*$" 1)
;;                                            ("Function" "function +\\([^ (]+\\).*$" 1)
;;                                            ("Module" "^ *module +\\([^ ]+\\) *$" 1)
;;                                            ("Variable" "^ *local +\\([^ ]+\\).*$" 1)))
;;     (flymake-lua-load)))

;; @see http://lua-users.org/wiki/LuaStyleGuide
;; indent 2 spaces by default
(setq-default lua-indent-level 4)

;; (add-hook 'lua-mode-hook 'my-lua-mode-setup)


;;company-lua
(with-eval-after-load 'company
  (with-eval-after-load 'lua-mode
    (add-to-list 'company-backends '(company-lua
                                     company-etags
                                     company-dabbrev-code))))


;; (after-load 'company
;;   (add-hook 'lua-mode-hook
;;             (lambda () (sanityinc/local-push-company-backend #'(company-lua
;;                                                            company-etags
;;                                                            company-dabbrev-code)))))


(provide 'self-init-lua-mode)
