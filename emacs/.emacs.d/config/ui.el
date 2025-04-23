;; UI configuration

;; Disable startup message
(setq inhibit-startup-message t)

;; Disable toolbar, scrollbar, and menubar
(menu-bar-mode -1)
(when (display-graphic-p)
  (scroll-bar-mode -1)
  (tool-bar-mode -1))
;; Show line numbers
(global-display-line-numbers-mode t)

;; Better scrolling
(setq scroll-step 1
      scroll-conservatively 10000)

;; Set default font
(set-face-attribute 'default nil :font "Fira Code Retina" :height 160)

(use-package which-key
  :init (which-key-mode))

;; Use doom one theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

(use-package nerd-icons)

;; Status bar
(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom
  (doom-modeline-height 25)
  (doom-modeline-bar-width 3)
  (doom-modeline-icon t)
  (doom-modeline-major-mode-icon t)
  (doom-modeline-buffer-file-name-style 'truncate-except-project))

(provide 'ui)

