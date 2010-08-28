;; ============================================================================
;; ============================================================================
;; airbus charter
;; ============================================================================
;; ============================================================================

;; Language
(setq prg-comment-lang 'us)

;; My company
(setq prg-comment-company "CS")

;; Column to align field values
(setq prg-comment-field-column 18)

;; Character used to build module header
(setq prg-comment-mod-char ?*)

;; Template for module header
(setq prg-comment-mod-header
      '((prg-comment-mod-sep)
        n (prg-comment-pad-field ':file-name) (buffer-name)
        n (prg-comment-pad-field ':author) user-full-name
        n (prg-comment-pad-field ':company) prg-comment-company
        n (prg-comment-pad-field ':creat-date)
        (format-time-string "%d/%m/%Y")
        n (prg-comment-pad-field ':curr-version) "$Revision$"
        n (prg-comment-pad-field ':desc)
        (P "Description of the module: ")
        n (prg-comment-mod-sep)
        n (capitalize (prg-comment-get-text ':modif))
        n (capitalize(prg-comment-get-text ':version)) " | "
        (capitalize(prg-comment-get-text ':date)) "        | "
        (capitalize(prg-comment-get-text ':author)) "         | "
        (capitalize(prg-comment-get-text ':reason))
        n (prg-comment-mod-sep) n)
      )

;; Template for module footer
(setq prg-comment-mod-footer nil)

;; Character used to build function header
(setq prg-comment-fct-char ?*)

;; Template for function header
(setq prg-comment-fct-header
      '((prg-comment-fct-sep)
        n (prg-comment-pad-field ':func-name) (P "Function name: ")
        n (prg-comment-pad-field ':author) user-full-name
        n (prg-comment-pad-field ':company) prg-comment-company
        n (prg-comment-pad-field ':desc)
        (P "Description of the function: ")
        n (prg-comment-fct-sep)
        n (capitalize (prg-comment-get-text ':arguments))
        n (upcase (prg-comment-get-text ':in-2))
        n (upcase (prg-comment-get-text ':out-2))
        n (upcase (prg-comment-get-text ':in-out-2))
        n (prg-comment-fct-sep)
        n (prg-comment-pad-field ':return-val)
        n (prg-comment-fct-sep) n
        )
)

;; Character used to build inline separator
;; as default

;; Template for in-line separator
;;; as default

;; Character used to build maintenance block
(setq prg-comment-maint-char ?*)

;; Template for maintenance header
(setq prg-comment-maint-header
      '((prg-comment-fct-sep)
        n (prg-comment-pad-field ':modif-date)
        (format-time-string "%d/%m/%Y")
        n (prg-comment-pad-field ':author) user-full-name
        n (prg-comment-pad-field ':company) prg-comment-company
        n (prg-comment-pad-field ':desc)
        (P "Description of the change: ")
        n (prg-comment-fct-sep) n
        )
)

;; Template for maintenance footer
(setq prg-comment-maint-footer
      '((prg-comment-fct-sep)
        n (capitalize (concat (prg-comment-get-text ':end) " "
                              (prg-comment-get-text ':modif)))
        n (prg-comment-fct-sep) n
        )
)

;; Template for log header
(setq prg-comment-log-header
      '((prg-comment-mod-sep)
        n (prg-comment-pad-field ':name) (P "File name: ")
        n (prg-comment-pad-field ':location) (P "File location: ")
        n (prg-comment-pad-field ':source) (P "Generator name: ")
        n (prg-comment-pad-field ':creat-date)
        (format-time-string "%d/%m/%Y")
        n (prg-comment-pad-field ':desc) (P "Description: ")
        n (prg-comment-mod-sep) n
        )
)
