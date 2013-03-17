;; packges.elを使う
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Auto-complateの設定
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq ac-auto-start t)

; C-n,C-pで補完候補を選択できるようにする
(setq ac-use-menu-map t)
(define-key ac-menu-map (kbd "C-n") 'ac-next)
(define-key ac-menu-map (kbd "C-p") 'ac-previous)

; 補完推測機能用ファイルのパス
(setq ac-comphist-file "~/.emacs.d/cache/ac-comphist.dat")

;; Emacs-Helmの設定
(require 'helm-config)

; Helm用キーバインド
(global-set-key (kbd "C-c C-h") 'helm-mini)
(global-set-key (kbd "C-c C-c") 'helm-M-x)

; Helmでコマンド補完をできるようにする
(helm-mode 1)

; Helm中にCtrl-hを使えるようにする
(eval-after-load 'helm
  '(progn
     (define-key helm-map (kbd "C-h") 'delete-backward-char)
     ))
