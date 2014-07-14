(require 'erlang-start)

(setq erlang-electric-commands '())

(defun my-erlang-mode-hook ()
        ;; when starting an Erlang shell in Emacs, default in the node name
        (setq inferior-erlang-machine-options '("-name" "emacs-node"))
        ;; add Erlang functions to an imenu menu
        (imenu-add-to-menubar "imenu")
        ;; customize keys
        (local-set-key [return] 'newline-and-indent)
        (local-set-key "\C-c\C-d\C-h" 'erlang-man-function)
        )

;; Some Erlang customizations
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)

