;;start package.el with emacs
(require 'package)

(require 'self-init-require-package)
(require 'self-init-common)
;; (require 'self-init-linum-mode)
(require 'self-init-company)
(require 'self-init-irony)
;; (require 'self-init-lsp-mode)
(require 'self-init-flycheck)
(require 'self-init-gtags)
(require 'self-init-ctags)
(require 'self-init-counsel-gtags)
(require 'self-init-clipboard)
(require 'self-init-cc-mode)
(require 'self-init-lua-mode)
(require 'self-init-python-mode)
(require 'self-init-cmake-mode)
(require 'self-init-protobuf-mode)
(require 'self-init-systemtap-mode)
(require 'self-init-nginx-mode)
(require 'self-init-go-mode)


;; ;;set MELPA to repository list
;; (setq package-archives '(("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
;;                          ("popkit" . "https://elpa.popkit.org/packages/")
;;                          ;;("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ;;("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;                          ))

;; ;;initialize package.el
;; (package-initialize)

;;chinese-fonts-setup
;;(require 'chinese-fonts-setup)
;; 让 chinese-fonts-setup 随着 emacs 自动生效。
;;(chinese-fonts-setup-enable)

;;show line number
;; (require 'linum)
;; (global-linum-mode t)
;;(global-nlinum-mode t)

;; (require 'semantic)
;; (semantic-add-system-include "/usr/local/include")
;; (semantic-add-system-include "/usr/include/c++/4.8.2")
;; (semantic-add-system-include "~/source-code/linux-4.5.3")
;; (semantic-add-system-include "~/mylib/c-include")

;; (require 'self-init-gtags)
;; (require 'self-init-ctags)
;; (require 'self-init-cc-mode)
;;(setq vc-handled-backends ())

;;(require 'self-init-input-method)

;; (add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))
;;disable mouse
;; (require 'disable-mouse)
;; (global-disable-mouse-mode)

;;;provide init-local
(provide 'init-local)
