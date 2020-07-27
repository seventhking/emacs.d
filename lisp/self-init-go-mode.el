;; (require 'go-mode)
;; (require 'company)
;; (require 'company-go)

;; (add-to-list 'load-path "/place/where/you/put/it/")
;; (autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))

(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

;; (add-hook 'go-mode-hook (lambda ()
;;                           (set (make-local-variable 'company-backends) '(company-go))
;;                           (company-mode)))

(with-eval-after-load 'company
  (with-eval-after-load 'go-mode
    (add-to-list 'company-backends '(company-go))))

;; (after-load 'company
;;   (add-hook 'go-mode-hook
;;             (lambda () (sanityinc/local-push-company-backend #'(company-go)))))

(exec-path-from-shell-copy-env "GOPATH")
;; Godef jump key binding
;; (local-set-key (kbd "M-,") 'godef-jump)
;; (local-set-key (kbd "M-.") 'pop-tag-mark)

(provide 'self-init-go-mode)
