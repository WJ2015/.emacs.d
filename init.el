

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq debug-on-error t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                                                        ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                  emacs show things                     ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                                                        ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'smex)
(require 'org-install)
(require 'color-theme)
(load-theme 'wheatgrass) ;;color-theme-gray1
(setq-default tab-width 4) 
;; 显示行列号
(setq column-number-mode t)
(setq line-number-mode t)
(global-linum-mode t)
;; 设置显示格式 
(setq display-line-number-format "%4d|")
;; 关闭启动时的`开机画面'
(setq inhibit-startup-message t)
;; 关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)
;; 语法加亮
(global-font-lock-mode 't)
;; 语法高亮。除shell-mode和text-mode之外的模式中使用语法高亮
(setq font-lock-maximum-decoration t)
(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))
;; 括号匹配
;; 括号匹配时显示另一端的括号，而不是跳过去
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;; 标题拦显示buffer的名字
(setq frame-title-format "emacs@%b")
;; Shell 使用 ansi color
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;; 取消工具栏
;;(tool-bar-mode nil)
;; 设定不产生备份文件
(setq make-backup-files nil)
;; 自动保存模式
(setq auto-save-mode nil)
;; 不生成临时文件
(setq-default make-backup-files nil)
;; 允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)
;; 自动的在文件末增加一新行
(setq require-final-newline t)
(require 'yafolding)
(define-key yafolding-mode-map (kbd "C-c <M-return>") 'yafolding-toggle-all)
(define-key yafolding-mode-map (kbd "C-c <C-return>") 'yafolding-toggle-element)
(add-hook 'prog-mode-hook
          (lambda () (yafolding-mode)))

(require 'ace-jump-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                                                        ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                  WEB INFO                              ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                                                        ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                                                        ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                  PHP INFO                              ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;                                                        ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq package-archives
  '(("melpa" . "https://melpa.org/packages/")) )

(add-hook 'php-mode-hook
  '(lambda ()
     (auto-complete-mode t)
     (require 'ac-php)
     (setq ac-sources  '(ac-source-php ) )
     (yas-global-mode 1)
     (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
     (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
     (require 'company-php)
     (company-mode t)
     (add-to-list 'company-backends 'company-ac-php-backend )
     ))





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ctags ac- ids-edit ido-hacks ido-completing-read+ ido-complete-space-or-hyphen ido-load-library idomenu ido-gnus smex cn-outline hideshowvis hideshow-org 2048-game ac-php company-web ac-html-bootstrap ac-html)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
