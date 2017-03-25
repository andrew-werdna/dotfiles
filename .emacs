(prefer-coding-system 'utf-8)

(when window-system
    (menu-bar-mode -1)
    (tool-bar-mode -1)
    (scroll-bar-mode -1)
    (tooltip-mode -1))

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(require 'package)
(add-to-list 'package-archives
                          '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(eval-when-compile
    (require 'use-package))

(column-number-mode)
(global-linum-mode t)

(setq use-package-always-ensure t)

(use-package evil)
(use-package evil-leader)
(use-package neotree)
(use-package magit)

(global-evil-leader-mode)

(evil-mode 1)

(global-set-key [f8] 'neotree-toggle)

(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)
(setq neo-smart-open t)

(global-set-key (kbd "C-x g") 'magit-status)
