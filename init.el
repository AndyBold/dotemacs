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



;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
