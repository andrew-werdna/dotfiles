(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("marmalade"  . "http://marmalade-repo.org/packages/")
          ("melpa-stable" . "http://stable.melpa.org/packages/")
          ("gnu" . "https://elpa.gnu.org/packages/")
          ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(setq use-package-always-ensure t)

(setq user-full-name "Andrew Brown")
(setq display-time-24hr-format t)
(setq display-time-format "%H:%M - %d.%b.%y")
(setq make-backup-files nil)
(setq require-final-newline t)
(global-linum-mode t)

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
;;(setq exec-path (append exec-path '("/usr/local/bin")

(display-time-mode 1)
(display-battery-mode 1)

(use-package markdown-mode)
(use-package php-mode)
(use-package web-mode)
(use-package yaml-mode)
(use-package js2-mode)
(use-package typescript-mode)

(use-package zerodark-theme)
(use-package evil)
(use-package helm)
(use-package dumb-jump)
(use-package magit)
(use-package projectile)

(require 'evil)
(evil-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (projectile dumb-jump helm evil zerodark-theme yaml-mode web-mode php-mode markdown-mode use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
