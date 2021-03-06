;; basic configure file 

;;username , email
(setq user-full-name "lzw")
(setq user-mail-address "lzw0739@163.com")

;; window 工具栏, 滚动条, 菜单栏
(if (functionp 'tool-bar-mode) (tool-bar-mode nil))
(if (functionp 'scroll-bar-mode) (scroll-bar-mode nil))
(if (functionp 'menu-bar-mode) (menu-bar-mode nil))

;;设置背景颜色  
(set-background-color "white")  
;;设置字体颜色  
(set-foreground-color "black")  
(set-face-foreground 'region "green")  ;; 区域前景颜色设为绿色
(set-face-background 'region "blue") ;; 区域背景色设为蓝色

;; 显示括号匹配
(show-paren-mode 1)

;; 默认行数， 行数显示
(setq default-fill-column 160) ; 换行
(column-number-mode t)
(line-number-mode t)

;; 缩进 tab key was used!!! (auto-complete)
;(setq indent-tabs-mode nil)
;(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(setq tab-width 4 c-basic-offset 4)

;show line number
(require 'linum)
(global-linum-mode t)

;; datetime
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;; mouse, cursor
(set-mouse-color "white")
(set-cursor-color "green")
(blink-cursor-mode -1) ;; 光标不闪
(mouse-avoidance-mode 'animate) ;; 光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
;(set-default cursor-type 'bar) ;设置光标为线条状  

;;高亮当前行  
(require 'hl-line)
(global-hl-line-mode t)

;; yes or no
(fset 'yes-or-no-p 'y-or-n-p) 


;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;; font
;(set-default-font " -bitstream-Courier 10 Pitch-normal-normal-normal-*-17-*-*-*-m-0-iso10646-1")

;; 全屏模式
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;关闭烦人的出错时的提示声
(setq visible-bell t)

;; keys
;(windmove-default-keybindings)
;(setq windmove-wrap-around t)
;; window move
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(global-set-key (kbd "M-SPC") 'set-mark-command)

;; window split
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)

;; 快速切换至上个buffer
(global-set-key (kbd "<backtab>") #'(lambda ()
                                      (interactive)
                                      (switch-to-buffer (other-buffer (current-buffer) 1))))
