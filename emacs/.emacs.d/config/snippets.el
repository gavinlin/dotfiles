;; Yasnippet setup

(use-package yasnippet
  :init
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :after yasnippet)

(add-hook 'org-mode-hook #'yas-minor-mode)

;; Integrate yasnippet with corfu
(defun corfu-enable-yas ()
  "Enable yasnippet integration with corfu."
  (setq-local completion-at-point-functions
              (list (cape-super-capf
                     #'yasnippet-capf
                     (cape-capf-buster #'completion-at-point)))))

(add-hook 'prog-mode-hook #'corfu-enable-yas)

(provide 'snippets)
