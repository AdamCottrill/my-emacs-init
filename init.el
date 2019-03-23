
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ;;("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/"))
      )
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

(org-babel-load-file (expand-file-name "~/.emacs.d/ReadMe.org"))

;; end of my config.
;;===================================================


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   (quote
    ("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "6124d0d4205ae5ab279b35ac6bc6a180fbb5ca594616e1e9a22097024c0a8a99" "d057f0430ba54f813a5d60c1d18f28cf97d271fd35a36be478e20924ea9451bd" default)))
 '(elpy-syntax-check-command "pylint --load-plugins pylint_django")
 '(elpy-test-runner (quote elpy-test-pytest-runner))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/Dropbox/orgfiles")
 '(package-selected-packages
   (quote
    (ws-butler iedit monokai-theme ag beacon ac-js2 smartparens poly-R ess-jags-d ess-smart-underscore markdown-mode dumb-jump counsel-projectile projectile virtualenvwrapper expand-region pytest htmlize ox-reveal zenburn-theme which-key web-mode use-package typescript-mode try tern-auto-complete soft-charcoal-theme magit js3-mode js2-refactor js-comint highlight-parentheses flycheck eval-in-repl ess emmet-mode elpy counsel company-tern auto-org-md)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(python-check-command "/home/adam/.virtualenvs/djtuts/bin/pylint")
 '(safe-local-variable-values
   (quote
    ((eval venv-workon "myusers")
     (python-shell-extra-pythonpaths "/home/adam/Documents/djcode/snippets/")
     (python-shell-interpreter . "/home/adam/.virtualenvs/snippets/bin/python")
     (pytest-global-name . "py.test")
     (virtualenv-default-directory . "/home/adam/.virtualenvs/snippets/")
     (virtualenv-workon . "snippets")
     (python-shell-interpreter-args . "-i --simple-prompt")
     (python-shell-interpreter-args . "-i")
     (python-shell-interpreter . "ipython")
     (eval venv-workon "djtuts")
     (pytest-global-name . "/home/adam/.virtualenvs/myblog/bin/py.test")
     (virtualenv-workon . "myblog")
     (venv-workon "tickets2")
     (eval progn
           (add-hook
            (quote venv-postactivate-hook)
            (lambda nil
              (setenv "SECRET_KEY" "SOME_SECRET")
              (setenv "PGPASS" "django123")))
           (add-hook
            (quote venv-predeactivate-hook)
            (lambda nil
              (setenv "SECRET_KEY" "")
              (setenv "PGPASS" ""))))
     (workon . "tickets2")
     (pytest-global-name . "/home/adam/.virtualenvs/tickets2/bin/py.test")
     (pytest-global-name . "/home/adam/.virtualenvs/tickets/bin/py.test")
     (virtualenv-default-directory . "/home/adam/.virtualenvs")
     (virtualenv-workon . "tickets2"))))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)
