;; fzf integration
;; Define a prefix keymap for FZF commands
(define-prefix-command 'fzf-command-map)
(global-set-key (kbd "C-c f") 'fzf-command-map)

(use-package fzf
  :ensure t
  :commands (fzf)
  :bind
  (("C-c f f" . fzf)
   ("C-c f d" . fzf-directory)
   ("C-c f g" . fzf-grep)
   ("C-c f b" . fzf-switch-buffer))
  :config
  (setq fzf/executable "fzf") ;; Make sure fzf is in your PATH
  )

(provide 'fzf-config)
