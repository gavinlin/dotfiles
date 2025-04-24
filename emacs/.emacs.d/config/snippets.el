;; Snippet support with yasnippet and safe integration with corfu

(use-package yasnippet
  :init
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :after yasnippet)

;; Optional: enable yas as fallback if corfu/cape miss
;; Avoid broken CAPF setup by NOT inserting yasnippet-capf directly

(provide 'snippets)
