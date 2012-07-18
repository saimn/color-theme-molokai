;; Author: Adam Lloyd <adam@alloy-d.net>
;;
;; Note: Based on the molokai theme for vim by Tomas Restrepo, which
;; is in turn based on the monokai theme for textmate by Wimer
;; Hazenberg and a darker variant by Hamish Stuart Macpherson.

(deftheme molokai "The Molokai color theme")

(let ((class '((class color) (min-colors 89)))
      ;; Molokai palette
      ;; colors with +x are lighter, colors with -x are darker
      (molokai-fg+1 "#ffffff")
      (molokai-fg "#f8f8f2")
      (molokai-fg-1 "#f8f8f0")
      (molokai-fg-2 "#bcbcbc")
      (molokai-fg-3 "#aaaaaa")

      (molokai-bg+1 "#000000")
      (molokai-bg "#1b1e1f")
      (molokai-bg-1 "#232526")
      (molokai-bg-15 "#293739")
      (molokai-bg-2 "#333333")
      (molokai-bg-3 "#403d3d")

      (molokai-red-1 "#ff0000")
      (molokai-red "#f92672")
      (molokai-red+1 "#960050")
      (molokai-orange "#fd971f")
      (molokai-orange+1 "#cd5907")
      (molokai-yellow+1 "#e4e500")
      (molokai-yellow "#e6db74")
      (molokai-yellow-1 "#c4be89")
      (molokai-green "#a6e22e")
      (molokai-cyan "#66d9ef")
      (molokai-blue "#5c7176")
      (molokai-magenta "#ae81ff"))

  (custom-theme-set-faces
   'molokai
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,molokai-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,molokai-yellow-1 :underline t :weight normal))))

   ;;; basic coloring
   `(default ((,class (:foreground ,molokai-fg :background ,molokai-bg))))
   `(cursor ((,class (:background ,molokai-red))))
   `(escape-glyph-face ((,class (:foreground ,molokai-yellow))))
   `(fringe ((,class (:foreground ,molokai-fg :background ,molokai-bg-1))))
   `(header-line ((,class (:foreground ,molokai-yellow :background ,molokai-bg-1 :box nil))))
   `(highlight ((,class (:background ,molokai-bg-15))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,molokai-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,molokai-green))))
   `(compilation-error-face ((,class (:foreground ,molokai-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,molokai-fg))))
   `(compilation-info-face ((,class (:foreground ,molokai-blue))))
   `(compilation-info ((,class (:foreground ,molokai-green :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,molokai-green))))
   `(compilation-line-face ((,class (:foreground ,molokai-yellow))))
   `(compilation-line-number ((,class (:foreground ,molokai-yellow))))
   `(compilation-message-face ((,class (:foreground ,molokai-blue))))
   `(compilation-warning-face ((,class (:foreground ,molokai-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,molokai-fg))))
   `(grep-error-face ((,class (:foreground ,molokai-red-1 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,molokai-blue))))
   `(grep-match-face ((,class (:foreground ,molokai-orange :weight bold))))
   `(match ((,class (:background ,molokai-bg-1 :foreground ,molokai-orange :weight bold))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,molokai-bg :background ,molokai-orange))))
   `(isearch-fail ((,class (:foreground ,molokai-bg :background ,molokai-red))))
   `(lazy-highlight ((,class (:foreground ,molokai-bg :background ,molokai-yellow+1))))

   `(menu ((,class (:foreground ,molokai-fg :background ,molokai-bg))))
   `(minibuffer-prompt ((,class (:foreground ,molokai-cyan))))
   `(mode-line ((,class (:foreground ,molokai-fg :background ,molokai-orange+1 :box nil :weigth semi-bold))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-inactive ((,class (:foreground ,molokai-fg :background ,molokai-bg-2 :box nil))))
   `(mode-line-highlight ((,class (:foreground ,molokai-fg :background ,molokai-orange :box nil))))
   `(mode-line-emphasis ((,class (:foreground ,molokai-fg :background ,molokai-red :box nil))))
   `(region ((,class (:background ,molokai-bg-3))))
   `(secondary-selection ((,class (:background ,molokai-bg-15))))
   `(trailing-whitespace ((,class (:background ,molokai-red))))
   `(vertical-border ((,class (:foreground ,molokai-fg :background ,molokai-bg-1))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,molokai-green))))
   `(font-lock-comment-face ((,class (:foreground ,molokai-blue :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,molokai-blue :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,molokai-magenta))))
   `(font-lock-doc-face ((,class (:foreground ,molokai-yellow :slant italic))))
   `(font-lock-doc-string-face ((,class (:foreground ,molokai-blue :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,molokai-green :slant italic :weigth bold))))
   `(font-lock-keyword-face ((,class (:foreground ,molokai-red :weight bold))))
   `(font-lock-negation-char-face ((,class (:weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,molokai-green))))
   `(font-lock-string-face ((,class (:foreground ,molokai-yellow :italic t))))
   `(font-lock-type-face ((,class (:foreground ,molokai-cyan))))
   `(font-lock-variable-name-face ((,class (:foreground ,molokai-red))))
   `(font-lock-warning-face ((,class (:foreground ,molokai-fg+1 :background ,molokai-bg-2 :weight bold :underline t))))
   `(font-lock-regexp-grouping-backslash ((,class (:weight bold))))
   `(font-lock-regexp-grouping-construct ((,class (:weight bold))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;;; external

   ;; full-ack
   `(ack-separator ((,class (:foreground ,molokai-fg))))
   `(ack-file ((,class (:foreground ,molokai-blue))))
   `(ack-line ((,class (:foreground ,molokai-yellow))))
   `(ack-match ((,class (:foreground ,molokai-orange :background ,molokai-bg-1 :weigth bold))))

   ;; auto-complete
   `(ac-candidate-face ((,class (:background ,molokai-bg-1 :foreground ,molokai-fg))))
   `(ac-selection-face ((,class (:background ,molokai-green :foreground ,molokai-bg+1))))
   `(popup-tip-face ((,class (:background ,molokai-bg-2 :foreground ,molokai-fg))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,molokai-blue))))
   `(popup-scroll-bar-background-face ((,class (:background ,molokai-bg-1))))
   `(popup-isearch-match ((,class (:background ,molokai-orange :foreground ,molokai-fg))))
   `(icompletep-choices ((,class (:foreground ,molokai-red))))
   `(icompletep-determined ((,class (:foreground ,molokai-green))))
   `(icompletep-keys ((,class (:foreground ,molokai-red))))
   `(icompletep-nb-candidates ((,class (:foreground ,molokai-magenta))))

   ;; diff
   `(diff-added ((,class (:foreground ,molokai-green :weight bold))))
   `(diff-changed ((,class (:foreground ,molokai-yellow))))
   `(diff-removed ((,class (:foreground ,molokai-red :weight bold))))
   `(diff-header ((,class (:background ,molokai-bg+1))))
   `(diff-file-header ((,class (:foreground ,molokai-cyan :weight bold))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,molokai-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,molokai-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,molokai-blue :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,molokai-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,molokai-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,molokai-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,molokai-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:weight bold :underline ,molokai-red-1))))
   `(flymake-warnline ((,class (:weight bold :underline ,molokai-yellow-1))))
   `(flymake-infoline ((,class (:weight bold :underline ,molokai-green))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:underline ,molokai-orange))))
   `(flyspell-incorrect ((,class (:underline ,molokai-red-1 :weight bold))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,molokai-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,molokai-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,molokai-yellow))))
   `(erc-keyword-face ((,class (:foreground ,molokai-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,molokai-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,molokai-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,molokai-green))))
   `(erc-pal-face ((,class (:foreground ,molokai-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,molokai-orange :background ,molokai-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,molokai-green))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1-face ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty-face ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2-face ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty-face ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3-face ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty-face ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4-face ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty-face ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5-face ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty-face ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6-face ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty-face ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low-face ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty-face ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1-face ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2-face ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3-face ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4-face ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5-face ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6-face ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low-face ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content-face ((,class (:inherit message-header-other))))
   `(gnus-header-from-face ((,class (:inherit message-header-from))))
   `(gnus-header-name-face ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups-face ((,class (:inherit message-header-other))))
   `(gnus-header-subject-face ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled-face ((,class (:foreground ,molokai-orange))))
   `(gnus-summary-high-ancient-face ((,class (:foreground ,molokai-blue))))
   `(gnus-summary-high-read-face ((,class (:foreground ,molokai-green :weight bold))))
   `(gnus-summary-high-ticked-face ((,class (:foreground ,molokai-orange :weight bold))))
   `(gnus-summary-high-unread-face ((,class (:foreground ,molokai-fg :weight bold))))
   `(gnus-summary-low-ancient-face ((,class (:foreground ,molokai-blue))))
   `(gnus-summary-low-read-face ((t (:foreground ,molokai-green))))
   `(gnus-summary-low-ticked-face ((,class (:foreground ,molokai-orange :weight bold))))
   `(gnus-summary-low-unread-face ((,class (:foreground ,molokai-fg))))
   `(gnus-summary-normal-ancient-face ((,class (:foreground ,molokai-blue))))
   `(gnus-summary-normal-read-face ((,class (:foreground ,molokai-green))))
   `(gnus-summary-normal-ticked-face ((,class (:foreground ,molokai-orange :weight bold))))
   `(gnus-summary-normal-unread-face ((,class (:foreground ,molokai-fg))))
   `(gnus-summary-selected-face ((,class (:foreground ,molokai-yellow :weight bold))))
   `(gnus-cite-1-face ((,class (:foreground ,molokai-blue))))
   `(gnus-cite-10-face ((,class (:foreground ,molokai-yellow-1))))
   `(gnus-cite-11-face ((,class (:foreground ,molokai-yellow))))
   `(gnus-cite-2-face ((,class (:foreground ,molokai-blue))))
   `(gnus-cite-3-face ((,class (:foreground ,molokai-blue))))
   `(gnus-cite-4-face ((,class (:foreground ,molokai-green))))
   `(gnus-cite-5-face ((,class (:foreground ,molokai-green))))
   `(gnus-cite-6-face ((,class (:foreground ,molokai-green))))
   `(gnus-cite-7-face ((,class (:foreground ,molokai-red))))
   `(gnus-cite-8-face ((,class (:foreground ,molokai-red-1))))
   `(gnus-cite-9-face ((,class (:foreground ,molokai-red-1))))
   `(gnus-group-news-1-empty-face ((,class (:foreground ,molokai-yellow))))
   `(gnus-group-news-2-empty-face ((,class (:foreground ,molokai-green))))
   `(gnus-group-news-3-empty-face ((,class (:foreground ,molokai-green))))
   `(gnus-group-news-4-empty-face ((,class (:foreground ,molokai-blue))))
   `(gnus-group-news-5-empty-face ((,class (:foreground ,molokai-blue))))
   `(gnus-group-news-6-empty-face ((,class (:foreground ,molokai-bg+1))))
   `(gnus-group-news-low-empty-face ((,class (:foreground ,molokai-bg+1))))
   `(gnus-signature-face ((,class (:foreground ,molokai-yellow))))
   `(gnus-x-face ((,class (:background ,molokai-fg :foreground ,molokai-bg))))

   ;; hl-line-mode
   `(hl-line ((,class (:background ,molokai-bg-1))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,molokai-yellow :weight bold))))
   `(ido-only-match ((,class (:foreground ,molokai-orange :weight bold))))
   `(ido-subdir ((,class (:foreground ,molokai-yellow))))

   ;; linum-mode
   `(linum ((,class (:foreground ,molokai-fg-3 :background ,molokai-bg))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,molokai-yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,molokai-orange :weight bold))))

   ;; markdown
   `(markdown-header-face ((,class (:weight bold))))
   `(markdown-header-face-1 ((,class (:weight bold :foreground ,molokai-cyan))))
   `(markdown-header-face-2 ((,class (:weight bold :foreground ,molokai-red))))
   `(markdown-header-face-3 ((,class (:weight bold :foreground ,molokai-green))))
   `(markdown-header-face-4 ((,class (:foreground ,molokai-magenta))))
   `(markdown-header-face-5 ((,class (:foreground ,molokai-yellow))))
   `(markdown-header-face-6 ((,class (:foreground ,molokai-cyan))))
   `(markdown-inline-code-face ((,class (:foreground ,molokai-cyan))))
   `(markdown-list-face ((,class (:foreground ,molokai-green))))
   `(markdown-blockquote-face ((,class (:slant italic))))
   `(markdown-pre-face ((,class (:foreground ,molokai-magenta))))
   `(markdown-link-face ((,class (:foreground ,molokai-cyan))))
   `(markdown-reference-face ((,class (:foreground ,molokai-cyan))))
   `(markdown-url-face ((,class (:foreground ,molokai-yellow))))
   `(markdown-link-title-face ((,class (:foreground ,molokai-red))))
   `(markdown-comment-face ((,class (:foreground ,molokai-blue))))
   `(markdown-math-face ((,class (:foreground ,molokai-magenta :slant italic))))

   ;; message-mode
   `(message-cited-text-face ((,class (:inherit font-lock-comment))))
   `(message-header-name-face ((,class (:foreground ,molokai-green))))
   `(message-header-other-face ((,class (:foreground ,molokai-green))))
   `(message-header-to-face ((,class (:foreground ,molokai-yellow :weight bold))))
   `(message-header-from-face ((,class (:foreground ,molokai-yellow :weight bold))))
   `(message-header-cc-face ((,class (:foreground ,molokai-yellow :weight bold))))
   `(message-header-newsgroups-face ((,class (:foreground ,molokai-yellow :weight bold))))
   `(message-header-subject-face ((,class (:foreground ,molokai-orange :weight bold))))
   `(message-header-xheader-face ((,class (:foreground ,molokai-green))))
   `(message-mml-face ((,class (:foreground ,molokai-yellow :weight bold))))
   `(message-separator-face ((,class (:inherit font-lock-comment))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,molokai-yellow))))
   `(nav-face-button-num ((,class (:foreground ,molokai-cyan))))
   `(nav-face-dir ((,class (:foreground ,molokai-green))))
   `(nav-face-hdir ((,class (:foreground ,molokai-red))))
   `(nav-face-file ((,class (:foreground ,molokai-fg))))
   `(nav-face-hfile ((,class (:foreground ,molokai-red-1))))

   ;; mumamo
   `(mumamo-background-chunk-major ((,class (:background nil))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,molokai-bg-1))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,molokai-bg-2))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,molokai-bg-3))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,molokai-bg+1))))

   ;; org-mode
   `(org-agenda-date-today ((,class (:foreground ,molokai-cyan :weight bold))) t)
   `(org-agenda-structure ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,molokai-fg :weight bold))))
   `(org-checkbox ((,class (:background ,molokai-bg+1 :foreground "white" :box (:line-width 1 :style nil)))))
   `(org-date ((,class (:foreground ,molokai-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,molokai-red-1))))
   `(org-done ((,class (:bold t :weight bold :foreground ,molokai-green))))
   `(org-formula ((,class (:foreground ,molokai-yellow-1))))
   `(org-headline-done ((,class (:foreground ,molokai-green))))
   `(org-hide ((,class (:foreground ,molokai-bg-1))))
   `(org-level-1 ((,class (:foreground ,molokai-orange :height 1.2))))
   `(org-level-2 ((,class (:foreground ,molokai-green :height 1.1))))
   `(org-level-3 ((,class (:foreground ,molokai-magenta))))
   `(org-level-4 ((,class (:foreground ,molokai-yellow))))
   `(org-level-5 ((,class (:foreground ,molokai-cyan))))
   `(org-level-6 ((,class (:foreground ,molokai-blue))))
   `(org-level-7 ((,class (:foreground ,molokai-yellow-1))))
   `(org-level-8 ((,class (:foreground ,molokai-orange+1))))
   `(org-link ((,class (:foreground ,molokai-yellow :underline t))))
   `(org-scheduled ((,class (:foreground ,molokai-green))))
   `(org-scheduled-previously ((,class (:foreground ,molokai-red+1))))
   `(org-scheduled-today ((,class (:foreground ,molokai-blue))))
   `(org-special-keyword ((,class (:foreground ,molokai-yellow))))
   `(org-table ((,class (:foreground ,molokai-green))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,molokai-orange))))
   `(org-todo ((,class (:bold t :foreground ,molokai-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,molokai-red :weight bold))))

   ;; outline
   `(outline-8 ((,class (:inherit default :foreground ,molokai-green))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0 :foreground ,molokai-red))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0 :foreground ,molokai-cyan))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0 :foreground ,molokai-yellow))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0 :foreground ,molokai-magenta))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0 :foreground ,molokai-green))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0 :foreground ,molokai-red))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0 :foreground ,molokai-cyan))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,molokai-cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,molokai-yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,molokai-magenta))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,molokai-red+1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,molokai-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,molokai-green))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,molokai-yellow+1))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,molokai-red-1))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,molokai-yellow-1))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,molokai-green))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,molokai-blue))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,molokai-red-1))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,molokai-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,molokai-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,molokai-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,molokai-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,molokai-red))))
   `(rpm-spec-package-face ((,class (:foreground ,molokai-red))))
   `(rpm-spec-section-face ((,class (:foreground ,molokai-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,molokai-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,molokai-red))))

   ;; restructured text
   `(rst-level-6-face ((,class (:inherit default :height 1.1 :foreground ,molokai-cyan :background ,molokai-bg-2))))
   `(rst-level-5-face ((,class (:inherit rst-level-6-face :foreground ,molokai-yellow))))
   `(rst-level-4-face ((,class (:inherit rst-level-5-face :foreground ,molokai-magenta))))
   `(rst-level-3-face ((,class (:inherit rst-level-4-face :weight bold :foreground ,molokai-green))))
   `(rst-level-2-face ((,class (:inherit rst-level-3-face :weight bold :foreground ,molokai-red))))
   `(rst-level-1-face ((,class (:inherit rst-level-2-face :weight bold :foreground ,molokai-cyan))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,molokai-red-1 :background ,molokai-bg :weight bold))))
   `(show-paren-match ((,class (:foreground ,molokai-orange :background ,molokai-bg-3 :weight bold))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,molokai-red))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,molokai-bg :foreground ,molokai-bg+1))))
   `(whitespace-hspace ((,class (:background ,molokai-bg :foreground ,molokai-bg+1))))
   `(whitespace-tab ((,class (:background ,molokai-bg :foreground ,molokai-red))))
   `(whitespace-newline ((,class (:foreground ,molokai-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,molokai-red :background ,molokai-bg))))
   `(whitespace-line ((,class (:background ,molokai-bg-1 :foreground ,molokai-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,molokai-orange :foreground ,molokai-orange))))
   `(whitespace-indentation ((,class (:background ,molokai-yellow :foreground ,molokai-red))))
   `(whitespace-empty ((,class (:background ,molokai-yellow :foreground ,molokai-red))))
   `(whitespace-space-after-tab ((,class (:background ,molokai-yellow :foreground ,molokai-red))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,molokai-green))))

   ;; woman
   `(woman-addition ((,class (:foreground ,molokai-magenta))))
   `(woman-bold ((,class (:foreground ,molokai-red))))
   `(woman-italic ((,class (:foreground ,molokai-green))))
   `(woman-unknown ((,class (:foreground ,molokai-cyan))))
   )

  ;;; custom theme variables
  (custom-theme-set-variables
   'molokai
   `(ansi-color-names-vector [,molokai-bg ,molokai-red ,molokai-green ,molokai-yellow
                                          ,molokai-blue ,molokai-magenta ,molokai-cyan ,molokai-fg])

   ;; fill-column-indicator
   `(fci-rule-color ,molokai-bg-1)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'molokai)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (widget-inactive-face ((t (:background "#ff0000"))))

;; Local Variables:
;; eval: (rainbow-mode 1)
;; End:
