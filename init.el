;;; init.el --- Summary
;;; Commentary:
;; Vanilla Emacs init.el


;; Package management
(package-initialize)
(require 'package)

;; Configure MELPA archives
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
			 ("gnu"       . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa"     . "https://melpa.org/packages/")
			 ("elpy"      . "https://jorgenschaefer.github.io/packages/")))

;; Configure use-package
(if (not (package-installed-p 'use-package))
(progn
  (package-refresh-contents)
  (package-install 'use-package)))
(require 'use-package)


;; Load orgmode formatted settings.
(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
                   user-emacs-directory))



;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#292929" "#CC555A" "#98A84B" "#D0B344" "#60bAB1" "#FD5FF0" "#68A0B3" "#C5C8C6"])
 '(company-ghc-show-info t)
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" default)))
 '(epg-gpg-program "/usr/local/MacGPG2/bin/gpg2")
 '(fci-rule-color "#333333")
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-tags-on-save t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#FF2C7A")))
 '(highlight-tail-colors
   (quote
    (("#333333" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#333333" . 100))))
 '(magit-diff-use-overlays nil)
 '(org-agenda-files
   (quote
    ("~/org/personal.org.gpg" "~/org/120technology.org.gpg" "~/org/journal.org.gpg")))
 '(org-habit-show-habits t t)
 '(package-selected-packages
   (quote
    (ghc-mode zenburn-theme hyperbole which-key eyebrowse shm ghc-mod company-ghc hindent haskell-mode apache-mode interleave json-navigator urlenc url-util org-bibtex ivy-bibtex vagrant-tramp vagrant dockerfile-mode org-brain docker persp-projectile perspective blog-admin flyspell-correct-ivy flyspell-popup all-the-icons-ivy org-bullets web-mode undo-tree org-pdfview pdf-tools password-store git-timemachine gitattributes-mode gitignore-mode gitconfig-mode git-gutter-fringe elpy org2blog paredit-menu elfeed-org elfeed-goodies elfeed json-mode ox-pandoc neotree spaceline-all-the-icons all-the-icons-dired all-the-icons persp-mode python-mode magit-ediff counsel-projectile counsel-bbdb counsel calfw jira-markup-mode ox-jira org-jira xml-rpc jira ob-sql-mode ob-restclient ob-applescript applescript-mode grab-mac-link osx-lib osx-clipboard osx-browse markdown-toc markdown-mode+ markdown-mode markdown yaml-mode terraform-mode hcl-mode puppet-mode plantuml-mode graphviz-dot-mode nginx-mode pyvenv starter-kit-ruby php+-mode cmake-font-lock cmake-mode ansible-vault ansible company-web company-shell company-restclient company-php company-lua company-jedi company-cmake company-ansible company artbollocks-mode bbdb-ext bbdb paradox achievements mu4e dired+ outline-magic git-auto-commit-mode better-defaults monokai-theme org-plus-contrib use-package-chords)))
 '(paradox-automatically-star t)
 '(pos-tip-background-color "#98A84B")
 '(pos-tip-foreground-color "#292929")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#CC555A")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#D0B344")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#98A84B")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#68A0B3")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#60bAB1"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#292929" "#333333" "#F70057" "#CC555A" "#86C30D" "#98A84B" "#BEB244" "#D0B344" "#40CAE4" "#60bAB1" "#FB35EA" "#FD5FF0" "#74DBCD" "#68A0B3" "#C5C8C6" "#CC555A")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elfeed-search-feed-face ((t (:foreground "windowFrameColor"))))
 '(org-block ((t (:background "gray26" :foreground "#CC555A"))))
 '(variable-pitch ((t (:family "Cooper Hewitt Book")))))

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
