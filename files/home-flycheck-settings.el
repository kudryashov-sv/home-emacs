(require 'flycheck)
(global-flycheck-mode 1)
(eval-after-load 'flycheck '(setq flycheck-checkers (delq 'emacs-lisp flycheck-checkers)))

