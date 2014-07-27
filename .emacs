;;; .emacs --- ff
;; add load path
;;; Code:

(add-to-list 'load-path "~/.emacs.d/")

;; start Emacs server
(server-start)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("3c9d994e18db86ae397d077b6324bfdc445ecc7dc81bb9d528cd9bba08c1dac1" default))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; load prelude
(load-library "init")

;; required packages
(prelude-require-packages
 '(
   powerline
   anti-zenburn-theme
   projectile
   google-this
   flycheck
   erlang
   powerline
   yasnippet
   markdown-mode
   js2-mode
   flx-ido
   smex
   ))

;; common settings
(setq-default indent-tabs-mode nil)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(add-hook 'dired-load-hook
          (function (lambda () (load "dired-x"))))


;;; Commentary:
;;

(require 'windmove)
(windmove-default-keybindings 'meta)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'powerline)
(powerline-default-theme)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; load zenburn
(load-theme 'anti-zenburn t)

;; auto-save options
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; ido-mode
(require 'ido)
(ido-mode t)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; linum
(require 'linum)
(global-linum-mode 1)

;; flycheck
(require 'flycheck)
(global-flycheck-mode 1)

;; google-this
(google-this-mode 1)

;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; projectile-mode
(require 'projectile)
(projectile-global-mode)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(setq projectile-file-exists-remote-cache-expire nil)
(setq projectile-file-exists-local-cache-expire (* 5 60))

;; smex settings
(smex-initialize) ; Can be omitted.  This might cause a (minimal) delay
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; disable prelude-whitespace
(setq prelude-whitespace nil)

;; erlang
(require 'erlang-start)

(setq erlang-electric-commands '())

(defun my-erlang-mode-hook ()
  (imenu-add-to-menubar "imenu")
  (local-set-key [return] 'newline-and-indent)
  (local-set-key "\C-c\C-d\C-h" 'erlang-man-function)
  )

;; Some Erlang customizations
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)

(provide '.emacs)

;;; .emacs ends here
