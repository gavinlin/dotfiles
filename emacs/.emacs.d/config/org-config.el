;; org mode enhancements

;; Better looking Org
(use-package org
  :ensure nil  ;; Built-in
  :config
  (setq org-hide-emphasis-markers t       ;; *bold* → bold
        org-pretty-entities t
        org-ellipsis " ▼ "                ;; folding indicator
        org-startup-indented t
        org-startup-folded 'content
        org-fontify-done-headline t
        org-hide-leading-stars t))

;; Nicer bullets
(use-package org-bullets
  :hook (org-mode . org-bullets-mode)
  :config
  (setq org-bullets-bullet-list '("◉" "○" "•" "◆" "▶")))

;; Vim-style keys in Org
(use-package evil-org
  :after org
  :hook (org-mode . evil-org-mode)
  :config
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

;; Org-modern: Beautiful UI (Emacs 28+)
(use-package org-modern
  :hook (org-mode . org-modern-mode)
  :config
  (setq org-modern-hide-stars nil))

;; Org agenda
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'org-config)
