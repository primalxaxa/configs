(setq inhibit-startup-message t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(load-theme 'deeper-blue t)
(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(notmuch-saved-searches
   '((:name "inbox" :query "tag:inbox" :key "i" :sort-order newest-first)
     (:name "unread" :query "tag:unread" :key "u")
     (:name "flagged" :query "tag:flagged" :key "f")
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "all mail" :query "*" :key "a")))
 '(package-selected-packages
   '(ement gnu-elpa-keyring-update emms notmuch-indicator company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(autoload 'notmuch "notmuch" "notmuch mail" t)

(setq user-mail-address "rmstallbaumer@gmail.com"
      user-full-name "Ryan Stallbaumer")
(setq mail-user-agent 'message-user-agent)
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-stream-type 'starttls
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

(setq package-check-signature 'allow-unsigned)

(require 'emms-setup)
(emms-all)
(setq emms-player-list '(emms-player-mpv))


