;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Adriano Dos Santos"
      user-mail-address "adsc999@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; test
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "CaskaydiaCove NF" :size 16 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))

(setq doom-emoji-fallback-font-families nil)

;;Emmet
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto start on any markup modes
(add-hook 'css-mode-hook 'emmet-mode) ;; Enable Emet's css abbreviation
(map! :leader
      :desc "emmet-expand-line"
      "e" #'emmet-expand-line)

(setq doom-themes-treemacs-theme "doom-colors")
(setq rainbow-delimiters-mode t)

;;Projects
(setq projectile-project-search-path '("~/Documentos/projetos/projetos++"))

;;blamer
(use-package blamer
  :bind (("s-i" . blamer-show-commit-info))
  :defer 20
  :custom
  (blamer-idle-time 0.3)
  (blamer-min-offset 70)
  :custom-face
  (blamer-face ((t :foreground "#7a88cf"
                    :background nil
                    :height 140
                    :italic t)))
  :config
  (global-blamer-mode 1))

;;Keybindings
(map! :leader
        :desc "evil-window-right"
         "4" #'evil-window-right)

(map! :leader
      :desc "evil-window-left"
      "1" #'evil-window-left)

(map! :leader
      :desc "evil-windows-up"
      "3" #'evil-window-up)

(map! :leader
      :desc "evil-windows-down"
      "2" #'evil-window-down)

(map! :leader
      :desc "copy-line"
      "!" #'crux-duplicate-current-line-or-region)
(map! :leader
      :desc "save-buffer"
      "d" #'save-buffer)
(map! :leader
      :desc "prodigy"
      "o o" #'prodigy)

;; BOOKmark in project

(map! :leader
      :desc "bookmark-in-project-toggle"
      "b 4" #'bookmark-in-project-toggle)

(map! :leader
      :desc "bookmark-in-project-jump-next"
      "b 2" #'bookmark-in-project-jump-next)

(map! :leader
      :desc "bookmark-in-project-jump-previous"
      "b 1" #'bookmark-in-project-jump-previous)

(map! :leader
      :desc "bookmark-in-project-jump"
      "b 3" #'bookmark-in-project-jump)



;;treemacs
(setq treemacs-width 25)

;;nyan mode
(setq nyan-mode t)
(setq nyan-animate-nyancat t)
(setq nyan-wavy-trail t)
;;beacon
(setq beacon-mode t)
;;prodigy-mode



;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-tokyo-night)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;;MODELINE
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)


(setq doom-modeline-buffer-modification-icon t)
(setq doom-modeline-buffer-name t)
(setq doom-modeline-minor-modes nil)
(setq doom-modeline-enable-word-count nil)
(setq doom-modeline-continuous-word-count-modes '(markdown-mode gfm-mode org-mode))
(setq doom-modeline-buffer-encoding t)
(setq doom-modeline-indent-info nil)
(setq doom-modeline-checker-simple-format t)
(setq doom-modeline-number-limit 99)
(setq doom-modeline-workspace-name t)
(setq doom-modeline-persp-name t)
(setq doom-modeline-lsp t)
(setq doom-modeline-modal-icon t)
(setq doom-modeline-env-version t)


(setq all-the-icons-)




(setq visual-line-mode t)


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
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
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their defiuition and see how
;; they are implemented.
;; Highlights all matches of the selection in the buffer.
(define-key evil-visual-state-map "R" 'evil-multiedit-match-all)
