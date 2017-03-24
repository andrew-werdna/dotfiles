(require 'package)

(setq package-list '(evil evil-leader))

(setq package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")
                                                 ("org" . "http://orgmode.org/elpa/") 
                                                                           ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
    (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
    (unless (package-installed-p package)
          (package-install package)))


(global-evil-leader-mode)

(evil-mode 1)
