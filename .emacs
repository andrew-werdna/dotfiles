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
      evil-leader))

(dolist (p package-list)
    (when (not (package-installed-p p))
               (package-install p)))


(setq inhibit-startup-message t) ;; Hide startup mesage
(global-linum-mode t) ;; Line numbers

(global-evil-leader-mode)

(evil-mode 1)
