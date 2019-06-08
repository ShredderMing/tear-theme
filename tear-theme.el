(deftheme tear-light
  "light theme for emacs based on tear design")
(let ((class '((class color) (min-colors 89)))
      (background "#ffffff")
      (current-line "#efefef")
      (selection "#d6d6d6")
      (foreground "#1f1f1f")
      (comment "#8e908c")
      (grey "#777777")
      (red "#ff80c3")
      (orange "#ffcb00")
      (yellow "#eab700")
      (green "#718c00")
      (aqua "#3e999f")
      (blue "#00acff")
      (purple "#8959a8"))
  (custom-theme-set-faces
   'tear-light
   `(default ((,class (:foreground ,foreground :background ,background))))
   `(bold ((,class (:weight bold))))
   `(bold-italic ((,class (:slant italic :weight bold))))
   `(underline ((,class (:underline t))))
   `(italic ((,class (:slant italic))))
   `(font-lock-builtin-face ((,class (:foreground ,aqua))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,green))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-doc-string-face ((,class (:foreground ,yellow))))
   `(font-lock-function-name-face ((,class (:foreground ,red :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,yellow))))
   `(font-lock-negation-char-face ((,class (:foreground ,blue))))
   `(font-lock-preprocessor-face ((,class (:foreground ,purple))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,yellow))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,purple))))
   `(font-lock-string-face ((,class (:foreground ,grey :weight bold))))
   `(font-lock-type-face ((,class (:foreground ,yellow :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,orange))))
   `(font-lock-warning-face ((,class (:weight bold :foreground ,red))))
   `(shadow ((,class (:foreground ,comment))))
   `(success ((,class (:foreground ,green))))
   `(error ((,class (:foreground ,red))))
   `(warning ((,class (:foreground ,orange))))
   ;; emacs interface
   `(hl-line ((,class (:background ,current-line))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  ;; add theme folder to `custom-theme-load-path' when installing over MELPA
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'tear-light)
