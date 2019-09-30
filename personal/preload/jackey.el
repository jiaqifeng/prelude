;;;;;;;;;;;;;;;;;;;; add melpa package 2017-05-02
;(setq package-archives
;             '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;               ;("melpa" . "http://melpa.org/packages/")
;               ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;               ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
;               ))
;(package-initialize)

;(setq package-check-signature nil)
(server-start)

; https://pawelbx.github.io/emacs-theme-gallery/
(setq prelude-theme 'adwaita)

(keyboard-translate ?\C-i ?\H-i)
(global-set-key [?\H-i] 'helm-buffers-list)
