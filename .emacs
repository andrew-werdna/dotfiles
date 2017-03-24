(prefer-coding-system 'utf-8)

(require 'package)


(add-to-list 'package-archives
                  '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'package-archives
                  '("org" . "http://orgmode.org/elpa/") t)

(add-to-list 'package-archives
                  '("marmalade" . "http://marmalade-repo.org/packages/") t)

(unless package-archive-contents
    (package-refresh-contents))

(package-initialize)

(defvar package-list
    '(evil
      evil-leader
      neotree
      magit))

(dolist (p package-list)
    (when (not (package-installed-p p))
               (package-install p)))


(setq inhibit-startup-message t) ;; Hide startup mesage
(global-linum-mode t) ;; Line numbers

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (neotree evil-leader evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
