;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Davi J. Marcon"
      user-mail-address "davijosuemarcon@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-outrun-electric )

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; VISUAL CONF
(setq doom-font (font-spec :family "CodeNewRoman Nerd Font Mono" :size 16 :weight 'semi-light)
                    doom-variable-pitch-font (font-spec :family "CodeNewRoman Nerd Font Mono" :size 16))



;; Whitespace
(global-whitespace-mode +1)
(use-package! whitespace
  :config
  (setq
    whitespace-style '(face spaces space-mark trailing lines-tail)
     whitespace-display-mappings
        '((tab-mark ?\t [?› ?\t])
           (newline-mark 10 [?¬ 10])
           (space-mark 32 [183] [46])
        )))

;; Identation
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(require 'highlight-indent-guides)
(setq highlight-indent-guides-method 'character)
(setq highlight-indent-guides-auto-enabled nil)
(set-face-foreground 'highlight-indent-guides-character-face "#FF1690")
;; PROJECTILE

(setq projectile-project-search-path '("~/github/"))


;; KEY-MAPPING


(map! :map evil-window-map
      "SPC" #'rotate-layout
      ;; Navigation
      "<left>"     #'evil-window-left
      "<down>"     #'evil-window-down
      "<up>"       #'evil-window-up
      "<right>"    #'evil-window-right
      ;; Swapping windows
      "C-<left>"       #'+evil/window-move-left
      "C-<down>"       #'+evil/window-move-down
      "C-<up>"         #'+evil/window-move-up
      "C-<right>"      #'+evil/window-move-right)

(map! :after global-whitespace-mode "C-c C-f" #'global-whitespace-mode)
(map! :after magit "C-c C-g" #'magit-status)

;; OTHER STUFF

(global-wakatime-mode +1)
(setq wakatime-api-key "2123cc0b-c8c8-4724-8a2b-8e882299bf7f")
(setq wakatime-cli-path "/home/davim/miniconda3/bin/wakatime")
