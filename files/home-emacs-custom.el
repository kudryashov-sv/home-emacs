;;; home-emacs-custom.el --- emacs customizations
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

;; linum
(require 'linum)
(global-linum-mode 1)

