;;start package.el with emacs
(require 'package)

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

;;disable indent-guide-mode
(remove-hook 'prog-mode-hook 'indent-guide-mode)

;;show line number
(require 'linum)
(global-linum-mode t)
;;(global-nlinum-mode t)

;;set c-mode indent
;; (setq-default c-basic-offset 4)
;; (setq c-default-style
;;       '((c-mode . "stroustrup")
;;         (c++-mode . "stroustrup")
;;         (java-mode . "java")
;;         (awk-mode . "awk")
;;         (other . "gnu")))

;;set google c style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)

;; (require 'semantic)
;; (semantic-add-system-include "/usr/local/include")
;; (semantic-add-system-include "/usr/include/c++/4.8.2")
;; (semantic-add-system-include "~/source-code/linux-4.5.3")
;; (semantic-add-system-include "~/mylib/c-include")

(require 'wdq-init-srefactor)

(require 'wdq-init-company)
(require 'wdq-init-gtags)
(require 'wdq-init-ctags)
;;(require 'wdq-init-cc-mode)
;;(setq vc-handled-backends ())

;;(require 'wdq-init-input-method)

;;
(require 'wdq-init-clipboard)

;;disable mouse
;; (require 'disable-mouse)
;; (global-disable-mouse-mode)

;;;provide init-local
(provide 'init-local)
