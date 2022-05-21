;; Thanks, but no thanks
(setq inhibit-startup-message t)

;; Font config
(defvar efs/default-font-size 180)
(defvar efs/default-variable-font-size 180)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; STARTUP PERFORMANCE ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun efs/display-startup-time()
  (message "Emacs loaded in %s with %d garbage collections."
	   (format "%.2f seconds"
		   (float-time
		    (time-substract after-init-time before-init-time)))
	   gcs-done))

(add-hook 'emacs-startup-hook' #'efs/display-startup-time')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  PACKAGE SYSTEM SETUP  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" .  "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package
(unless (package-installed -p 'use-package )
  (package-install 'use-package)

  (require 'use-package)
  (setq use-package-always-ensure t)

  ;; Automatic Package Updates
