;;; packages.el --- ponylang Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sean T Allen <sean@monkeysnatchbanana.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq ponylang-packages
    '(
      (ponylang-mode :location (recipe
                               :fetcher github
                               :repo "abingham/ponylang-mode"
                               :branch "class-indent"))
      (flycheck-pony :location (recipe
                               :fetcher github
                               :repo "rmloveland/flycheck-pony"))))

(defun ponylang/init-ponylang-mode ()
  (use-package ponylang-mode
  :ensure t
  :config
  (progn
    (add-hook
     'ponylang-mode-hook
     (lambda ()
       (set-variable 'indent-tabs-mode nil)
       (set-variable 'tab-width 2))))))

(defun ponylang/init-flycheck-pony ()
  (use-package flycheck-pony))
