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

(setq user-full-name "Andrew Brown")

(setq display-time-24hr-format t)
(setq display-time-format "%H:%M - %d.%b.%y")
(display-time-mode 1)

(display-battery-mode 1)

(use-package zerodark-theme
  :ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (zerodark-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
