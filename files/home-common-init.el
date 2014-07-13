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

