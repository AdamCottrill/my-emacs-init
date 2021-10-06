
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ;;("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")

      ))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(setq use-package-verbose t)


;; TODO: Load settings from settings.el
;; (setq custom-file "~/.emacs.d/settings.el")
;; (load-file "~/.emacs.d/settings.el")


;; this is where my org files will go. Different on different
;; computers, keeps computer specific setting out of my-init.org
(defvar  my-org-dir "~/Dropbox/orgfiles")
(defvar emacs-backup-directory  "~/Documents/sandbox/emacs/")

(use-package org
  ;;:ensure t
  ;; :pin org
  )

;;TODO: put this in an ifelse depending on OS:
(setq org-file-apps
      (append '(
                ;;("\\.pdf\\'" . "evince %s") ;;windows
                ("\\.pdf\\'" . "Sumatra %s")  ;;linux
                ) org-file-apps ))

;;(org-babel-load-file (expand-file-name "~/.emacs.d/secrets.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/ReadMe.org"))

;; end of my config.
;;===================================================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-lsp lsp-treemacs ripgrep ag ejc-sql yaml-mode ws-butler which-key web-mode virtualenvwrapper vertico use-package unfill try tide smex smartparens rjsx-mode react-snippets rainbow-delimiters prettier-js org-roam org-re-reveal orderless monokai-theme marginalia magit lsp-ui lsp-pyright js2-refactor ivy-rich iedit highlight-parentheses helpful expand-region eval-in-repl emmet-mode embark-consult elpy dumb-jump dired-hide-dotfiles counsel-projectile blacken beacon auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
