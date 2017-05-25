;;anaconda-mode
(add-hook 'python-mode-hook 'anaconda-mode)
(after-load 'company
  (add-hook 'python-mode-hook
            (lambda () (sanityinc/local-push-company-backend #'company-anaconda))))

;;company-lua
(after-load 'company
  (add-hook 'lua-mode-hook
            (lambda () (sanityinc/local-push-company-backend #'company-lua))))


;;company-c-headers
(require 'company-c-headers)

(after-load 'company
  (add-hook 'c-mode-common-hook
            (lambda () (sanityinc/local-push-company-backend #'company-c-headers))))

(add-to-list 'company-c-headers-path-system '"/usr/include/c++/4.8.2/")
(add-to-list 'company-c-headers-path-system '"~/mylib/c-include")
(add-to-list 'company-c-headers-path-system '"~/mylib/cpp-include")

;;company-clang
(after-load 'company
  (add-hook 'c-mode-common-hook
            (lambda () (sanityinc/local-push-company-backend #'company-clang))))

;;(setq company-backends (delete 'company-semantic company-backends))

;;(setq company-clang-arguments '("-I/usr/include" "-I/usr/include/c++/4.8.2"))

(provide 'wdq-init-company)
