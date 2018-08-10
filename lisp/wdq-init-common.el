;;disable indent-guide-mode
(remove-hook 'prog-mode-hook 'indent-guide-mode)

;; (setenv "GTAGSLIBPATH" (concat "/usr/include"
;;                                ":"
;;                                "/usr/src/linux/include"
;;                                ":"
;;                                (file-truename "~/proj2")
;;                                ":"
;;                                (file-truename "~/proj1")))

;; (setenv "MAKEOBJDIRPREFIX" (file-truename "~/gtags-repos/"))
;; (setq company-backends '((company-dabbrev-code company-gtags)))
;; (setq-default company-backends '((company-capf company-dabbrev-code company-gtags) company-dabbrev)
;;               company-dabbrev-other-buffers 'all
;;               company-tooltip-align-annotations t))

(define-coding-system-alias 'UTF-8 'utf-8)
(setq debug-on-error nil)

(provide 'wdq-init-common)
