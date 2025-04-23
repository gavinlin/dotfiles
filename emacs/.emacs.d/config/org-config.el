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
  (setq org-modern-hide-stars nil
	org-modern-star nil))

(use-package org-super-agenda
  :after org
  :config
  (org-super-agenda-mode))

(setq org-agenda-files '("~/workspace/org/weekly.org" "~/workspace/org/tasks.org"))

;; Org agenda
(global-set-key (kbd "C-c a") 'org-agenda)

;; Weekly review command
(defun my/org-weekly-review()
  "Start weekly review process"
  (interactive)
  (find-file "~/workspace/org/weekly.org")
  (goto-char (point-min))
  (org-overview)
  (search-forward-regexp "\\* Weekly Goals" nil t)
  (org-show-subtree)
  ;; Create new week section if needed
  (let ((date-str (format-time-string "Week of [%Y-%m-%d]")))
    (unless (search-forward date-str nil t)
      (end-of-line)
      (org-update-statistics-cookies t))))

;; Bind org-weekly-review to key
(global-set-key (kbd "C-c w") 'my/org-weekly-review)

(provide 'org-config)
