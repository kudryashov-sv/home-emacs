(setq-default indent-tabs-mode nil)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(add-hook 'dired-load-hook
	  (function (lambda () (load "dired-x"))))

(require 'windmove)
(windmove-default-keybindings 'meta)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'powerline)
(powerline-default-theme)

(setq-default transient-mark-mode t)
(setq next-line-add-newlines nil)

(setenv "PATH" (concat (getenv "PATH") ":/opt/bin"))

(setq inhibit-startup-message t)

(setq scroll-conservatively 50)
(setq scroll-margin 0)

(setq imenu-auto-rescan 1)

(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)

(setq-default indent-tabs-mode nil)

(setq c-default-style '((java-mode . "java") (awk-mode . "awk") (other . "bsd")))
(global-set-key (kbd "C-c C-j") 'compile)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

(global-set-key (kbd "C-c u c r") 'comment-region)
(global-set-key (kbd "C-c u u r") 'uncomment-region)
(global-set-key (kbd "C-c u r b") 'revert-buffer)

