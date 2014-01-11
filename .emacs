;; Emacs Chrome Extension
(add-to-list 'load-path "~/.emacs.d")
(require 'edit-server)
(edit-server-start)

;; Go
(add-to-list 'load-path "PATH CONTAINING go-mode-load.el" t)
(require 'go-mode-load)
(defun my-go-mode-hook () 
  (add-hook 'before-save-hook 'gofmt-before-save) 
  (setq tab-width 2 indent-tabs-mode 1)) 
(add-hook 'go-mode-hook 'my-go-mode-hook) 

;; Proofgeneral
(setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
(autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)
(global-set-key (kbd "C-c C-j") 'proof-goto-point) ;; Proofgeneral
  
;; OCAML SYNTAX HIGHLIGHTING
(add-to-list 'load-path "~/tuareg-caml-mode")                     
(add-to-list 'load-path "~/tuareg-2.0.4")                               
(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist)) 
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)     
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)             

(global-linum-mode t) ;; line numbers

(setq linum-format "%d ") ;; space after line numbers

(global-set-key (kbd "C-c n") 'comment-region) ;; comment region

(global-set-key (kbd "C-c m") 'uncomment-region) ;; uncomment region

(global-set-key (kbd "C-c i") 'indent-region) ;; indent region

(setq-default indent-tabs-mode nil) ;; no tabs for indent

(kill-buffer "*scratch*") ;; get rid of scratch buffer

(defalias 'yes-or-no-p 'y-or-n-p) ;; y or n instead of yes or no

;; (set-face-attribute 'default nil :height 10)

(add-to-list 'load-path "~/.emacs.d")

(global-font-lock-mode 1)
(put 'downcase-region 'disabled nil)
