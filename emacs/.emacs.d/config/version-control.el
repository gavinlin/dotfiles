(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))

(setq org-directory "~/workspace/org")

(defun my/org-sync-git ()
  "Sync org files with git repository."
  (interactive)
  (message "Syncing org files...")
  (let ((default-directory org-directory))
    ;; Pull changes first
    (shell-command "git pull")
    ;; Add all changes and commit
    (shell-command "git add .")
    (shell-command "git commit -m \"Auto-sync: $(date)\"")
    ;; Push changes
    (shell-command "git push"))
  (message "Org files synced!"))

;; Bind to key
(global-set-key (kbd "C-c o s") 'my/org-sync-git)

(defun my/org-resolve-conflicts ()
  "Open all org files with conflicts for resolution."
  (interactive)
  (let ((default-directory org-directory))
    (shell-command "git status -s" "*Git Status*")
    (with-current-buffer "*Git Status*"
      (goto-char (point-min))
      (while (re-search-forward "UU \\(.+\\.org\\)" nil t)
        (find-file-other-window (match-string 1))))))

;; Bind to key
(global-set-key (kbd "C-c o r") 'my/org-resolve-conflicts)

(provide 'version-control)
