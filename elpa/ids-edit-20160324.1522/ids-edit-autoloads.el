;;; ids-edit-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ids-edit" "ids-edit.el" (22498 21953 0 0))
;;; Generated autoloads from ids-edit.el

(autoload 'ids-edit-mode "ids-edit" "\
minor-mode for editing ideographs by Ideographic Description Sequence (IDS).

\(fn &optional ARG)" t nil)

(defvar global-ids-edit-mode nil "\
Non-nil if Global Ids-Edit mode is enabled.
See the `global-ids-edit-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-ids-edit-mode'.")

(custom-autoload 'global-ids-edit-mode "ids-edit" nil)

(autoload 'global-ids-edit-mode "ids-edit" "\
Toggle Ids-Edit mode in all buffers.
With prefix ARG, enable Global Ids-Edit mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Ids-Edit mode is enabled in all buffers where
`ids-edit--turn-on' would do it.
See `ids-edit-mode' for more information on Ids-Edit mode.

\(fn &optional ARG)" t nil)

(autoload 'ids-edit "ids-edit" "\
Compose IDS after the point, or decompose previous ideograph.
Prefix argument ARG forces to decompose previous ideograph.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("ids-edit-pkg.el") (22498 21953 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ids-edit-autoloads.el ends here
