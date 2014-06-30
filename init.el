; add settings file to .init
(add-to-list 'load-path "~/.emacs.d/settings")
(load "general-settings.el")
;(load "python-settings.el")
; add add-ons to list
(add-to-list 'load-path "~/.emacs.d/add-ons")
(load "linum.el")
(load "whitespace.el") 

; add base directory to list
(add-to-list 'load-path "~/.emacs.d")

;;-------------------------------------------------;;
;; -- Global Settings -----------------------------;;
;; ------------------------------------------------;;
(require 'ido)
(ido-mode t)
(require 'ansi-color)
(require 'dired-x)
(require 'ffap)
(require 'uniquify)
(require 'recentf)
;(require 'smooth-scrolling)
(require 'compile)

;; Custom set-faces from the 2013 Startup Engineering Course on Coursera

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit autoface-default :strike-through nil :underline nil :slant normal :weight normal :height 120 :width normal :family "monaco"))))
 '(column-marker-1 ((t (:background "red"))))
 '(diff-added ((t (:foreground "cyan"))))
 '(flymake-errline ((((class color) (background light)) (:background "Red"))))
 '(font-lock-comment-face ((((class color) (min-colors 8) (background light)) (:foreground "red"))))
 '(fundamental-mode-default ((t (:inherit default))))
 '(highlight ((((class color) (min-colors 8)) (:background "white" :foreground "magenta"))))
 '(isearch ((((class color) (min-colors 8)) (:background "yellow" :foreground "black"))))
 '(linum ((t (:foreground "black" :weight bold))))
 '(region ((((class color) (min-colors 8)) (:background "white" :foreground "magenta"))))
 '(secondary-selection ((((class color) (min-colors 8)) (:background "gray" :foreground "cyan"))))
 '(show-paren-match ((((class color) (background light)) (:background "black"))))
 '(vertical-border ((t nil)))
)


;; These settings from Jess Hamrick at
;; http://www.jesshamrick.com/2012/09/18/emacs-as-a-python-ide/
;; -------------------------------
;; -- Fill Column Indicator --
;; -------------------------------
(add-to-list 'load-path "~/.emacs.d/fill-column-indicator-1.85")
;(load "fill-column-indicator.el") 
(require 'fill-column-indicator)
;(define-globalized-minor-mode
 ; global-fci-mode fci-mode(lambda () (fci-mode 1)))
;(global-fci-mode t)


; These macros from the 2013 Start-up Engineering Course from Stanford on Coursera
;; ------------
;; -- Macros --
;; ------------
(fset 'align-equals "\C-[xalign-regex\C-m=\C-m")
(global-set-key "\M-=" 'align-equals)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c;" 'comment-or-uncomment-region)
(global-set-key "\M-n" 'next5)
(global-set-key "\M-p" 'prev5)
(global-set-key "\M-o" 'other-window)
(global-set-key "\M-i" 'back-window)
(global-set-key "\C-z" 'zap-to-char)
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-d" 'delete-word)
(global-set-key "\M-h" 'backward-delete-word)
(global-set-key "\M-u" 'zap-to-char)

;; -------------------------------
;; --Python Mode Settings --
;; --------------------------------

;; These settings from Jess Hamrick at
;; http://www.jesshamrick.com/2012/09/18/emacs-as-a-python-ide/

(setq py-install-directory "~/.emacs.d/python-mode.el-6.1.3")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

;; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
      '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t) 

; switch to the interpreter after executing code
;(setq py-shell-switch-buffers-on-execute-p t)
;(setq py-switch-buffers-on-execute-p t)
; don't split windows
(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(setq py-smart-indentation t)

; pymacs
;(add-to-list 'load-path "~/.emacs.d/pymacs-0.25")
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)
;(autoload 'pymacs-autoload "pymacs")

; ropemacs
;(require 'pymacs)
;(pymacs-load "ropemacs" "rope-") 

; ---------------------------
;; Org-Mode Settings ---
;; ---------------------------

; from research tools class at https://www.youtube.com/watch?v=ht4JtEbFtFI&list=SP7E11B34616530F5E
; first installed 28 Jan 2014

(require 'org-install)
(org-babel-do-load-languages
 'org-babel-load-languages 
 '(
   (sh, true) 
   (python, true)
   (ditaa , true)
   (dot , true)
   (octave , true)
   (sqlite , true)
   (perl , true)
   (R, true)
   (ruby, true)
)
)

;;----------------------------------
;;----- Keep Emacs Server On
;;---------------------------------
; installed 27 May 2014 from https://www.youtube.com/watch?v=EHvQG7dbk_8&index=8&list=PL7E11B34616530F5E

; Do not close the flie that was being edited when C-x # is typed
(setq server-kill-new-buffers nil)

; Start the emacs server for emacsclient
(server-start)


;(global-set-key "\C-cl" 'org-store-link)
;(global-set-key "\C-cc" 'org capture)
;(global-set-key "\C-ca" 'org-agenda)
;(global-set-key "\C-cb" 'org-iswitchb)

;;-----------------------------------------------------------
;;---- text mode ----------------------------------------
;;----------------------------------------------------------

;; turn on word wrap
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)






