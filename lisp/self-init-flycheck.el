(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(require 'flycheck-pyflakes)

(provide 'self-init-flycheck)
