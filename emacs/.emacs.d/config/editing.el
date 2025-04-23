;; Editing config
;; Install evil if not installed
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable evil-mode
(require 'evil)
(evil-mode 1)

;; Make sure those dirs exist
(make-directory "~/.emacs.d/backups/" t)
(make-directory "~/.emacs.d/autosaves/" t)

;; Put backup files in ~/.emacs.d/backups
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms `((".*" "~/.emacs.d/autosaves/" t)))


(provide 'editing)
