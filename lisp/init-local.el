;;start package.el with emacs
(require 'package)

(require 'wdq-init-common)
(require 'wdq-init-linum-mode)
(require 'wdq-init-company)
(require 'wdq-init-irony)
(require 'wdq-init-flycheck)
(require 'wdq-init-gtags)
(require 'wdq-init-ctags)
(require 'wdq-init-counsel-gtags)
(require 'wdq-init-clipboard)
(require 'wdq-init-cc-mode)
(require 'wdq-init-lua-mode)
(require 'wdq-init-python-mode)
(require 'wdq-init-cmake-mode)

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

;; (require 'wdq-init-gtags)
;; (require 'wdq-init-ctags)
;; (require 'wdq-init-cc-mode)
;;(setq vc-handled-backends ())

;;(require 'wdq-init-input-method)

;; (add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))
;;disable mouse
;; (require 'disable-mouse)
;; (global-disable-mouse-mode)

;;;provide init-local
(provide 'init-local)
