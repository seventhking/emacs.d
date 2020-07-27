;;;[cc-mode]

;;set google c style
(add-hook 'c-mode-common-hook 'google-set-c-style)

;;open .h file with c++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cc\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))

;;company-c-headers
;;company-irony
(with-eval-after-load 'company
  (with-eval-after-load 'cc-mode
    (add-to-list 'company-backends #'(company-irony
                                      company-irony-c-headers))))

;; Steve Purcell remove sanityinc/local-push-company-backend function; so configures below is no used;
;; (after-load 'company
;;   (add-hook 'c-mode-common-hook
;;             (lambda () (sanityinc/local-push-company-backend #'company-irony-c-headers)))
;;   ;; (add-hook 'c-mode-common-hook
;;   ;;           (lambda () (sanityinc/local-push-company-backend #'company-c-headers)))
;;   (add-hook 'c-mode-common-hook
;;             (lambda () (sanityinc/local-push-company-backend #'company-irony))))

;; (require 'company-c-headers)
;; (add-to-list 'company-c-headers-path-system '"/usr/include/c++/7.3.0")
;; (add-to-list 'company-c-headers-path-system '"~/mylib/c-include")
;; (add-to-list 'company-c-headers-path-system '"~/mylib/cpp-include")

;;company-clang
;; (after-load 'company
;;   (add-hook 'c-mode-common-hook
;;             (lambda () (sanityinc/local-push-company-backend #'company-clang))))


;;(setq company-backends (delete 'company-semantic company-backends))

;;(setq company-clang-arguments '("-I/usr/include" "-I/usr/include/c++/4.8.2"))

(provide 'self-init-cc-mode)
