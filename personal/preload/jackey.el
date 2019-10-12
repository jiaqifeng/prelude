;;;;;;;;;;;;;;;;;;;; add melpa package 2017-05-02
;(setq package-archives
;             '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;               ;("melpa" . "http://melpa.org/packages/")
;               ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;               ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
;               ))
;(package-initialize)

;; other settings should be set
;; install smex to enable recent command when M-x
;; how to do this? (setq ivy-height 30)

;(setq package-check-signature nil)
(server-start)

; https://pawelbx.github.io/emacs-theme-gallery/
(setq prelude-theme 'adwaita)

(keyboard-translate ?\C-i ?\H-i)
(global-set-key [?\H-i] 'helm-buffers-list)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  remap key C-z, because it's no use under X
;;
(defun copy-line (&optional arg)
  "Save current line into Kill-Ring without mark the line"
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (copy-region-as-kill beg end)))

(define-prefix-command 'ctl-z-map)
(global-set-key (kbd "C-z") 'ctl-z-map)
;(global-set-key "\C-z\C-d" 'fjq-insert-datetime)
;(define-key ctl-z-map (kbd "d") 'fjq-insert-datetime)
;(global-set-key (kbd "\C-zs") (quote copy-string))
(global-set-key (kbd "\C-z\C-a") 'copy-line)
(global-set-key (kbd "C-o") 'other-window)

(setq ediff-split-window-function 'split-window-horizontally)
