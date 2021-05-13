;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; 使用undo-tree
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require-package 'undo-tree)
(add-hook 'after-init-hook 'global-undo-tree-mode)
(after-load 'undo-tree
  (diminish 'undo-tree-mode))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; 在selectrum-mode下，DEL键设置为跳转到上级目录
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (defun selectrum-up-directory ()
;;   (interactive)
;;   (let ((directory (expand-file-name (minibuffer-contents-no-properties))))
;;     (delete-minibuffer-contents)
;;     (insert (string-trim-right directory "[^/]+/?"))))
;;; 或这样
(defun selectrum-up-directory ()
  "回到上层目录"
  (interactive)
  (let ((directory (minibuffer-contents-no-properties)))
    (delete-minibuffer-contents)
    (insert (string-trim-right (if (string= directory "~/") (expand-file-name "~/") directory) "[^/]+/?"))))

;; (define-key minibuffer-local-map (kbd "DEL") #'selectrum-up-directory)


;; disable key
;; (transpose-sexps ARG)
(global-unset-key (kbd "C-M-t"))

;; (end-of-defun &optional ARG)
(global-unset-key (kbd "C-M-e"))


(provide 'self-init-editing-utils)
