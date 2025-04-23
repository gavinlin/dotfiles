;; Snippet support with yasnippet and safe integration with corfu

(use-package yasnippet
  :init
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :after yasnippet)

;; Enable yasnippet in text/org modes too
(dolist (hook '(prog-mode-hook text-mode-hook org-mode-hook))
  (add-hook hook #'yas-minor-mode))

;; Optional: set up snippet directory
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
        yasnippet-snippets-dir))

;; Optional: enable yas as fallback if corfu/cape miss
;; Avoid broken CAPF setup by NOT inserting yasnippet-capf directly

(provide 'snippets)
