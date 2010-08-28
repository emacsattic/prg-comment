;; ============================================================================
;; ============================================================================
;; Default Charter
;; ============================================================================
;; ============================================================================
;; This file defines customizable variables and tempo-templates for
;; the default charter.
;; It should define ALL items otherwise some features migth be missing.
;; An exhaustive declaration defines:
;;
;; - the language of the charter (`prg-comment-language')
;; - the maximum column that comments can used (`prg-comment-max-column')
;; - the column to align field values (`prg-comment-field-column')
;; - the name of the company you write for (`prg-comment-company')
;; - the character used to build module header (`prg-comment-mod-char')
;; - the character used to build function header (`prg-comment-fct-char')
;; - the character used to build maintenance block (`prg-comment-maint-char')
;; - the character used to build in-line comment (`prg-comment-in-line-char')
;; - the template for module header (`prg-comment-mod-header')
;; - the template for module footer (`prg-comment-mod-footer')
;; - the template for function header (`prg-comment-fct-header')
;; - the template to begin a maintenance block (`prg-comment-maint-header')
;; - the template to end a maintenance block (`prg-comment-maint-footer')
;; - the template for log header (`prg-comment-log-header')
;; - the number of colums used by in-line comment (`prg-comment-in-line-width')
;; - the template for in-line separator (`prg-comment-in-line-sep')
;;
;; Use M-x describe-fuction RET tempo-define-template RET to get help on
;; template definition.
;; WARNING: the use of tempo 'p element is forbidden.
;; NOTE: After updating a charter, reload the file using it or call
;; the `prg-comment-set-charter' function.

;; Language
(setq prg-comment-lang 'fr)

;; My company
(setq prg-comment-company "CS")

;; Character used to build module header
(setq prg-comment-mod-char ?=)

;; Template for Module header
(setq prg-comment-mod-header
      '((prg-comment-mod-sep) n (P "Description of the module: ") n
        n (prg-comment-pad-field ':author) user-full-name
        (if prg-comment-company (concat "\t(" prg-comment-company ")"))
        n (prg-comment-pad-field ':date)
        (format-time-string "%d %b %Y - %H:%M:%S")
        n (prg-comment-pad-field ':last-upd) "$Date$"
        n (prg-comment-pad-field ':version) "$Revision$"
        n (prg-comment-mod-sep) n)
      )

;; Template for Module header
(setq prg-comment-mod-footer
      '((prg-comment-get-text ':EOF)))

;; Character used to build function header
(setq prg-comment-fct-char ?-)

;; Template for Function header
(setq prg-comment-fct-header
      '((prg-comment-fct-sep) n (P "Description of the function: ")
        n n (prg-comment-pad-field ':in)
        n (prg-comment-pad-field ':out)
        n (prg-comment-pad-field ':in-out)
        n (prg-comment-pad-field ':return)
        n n (prg-comment-pad-field ':date)
        (format-time-string "%d %b %Y - %H:%M:%S")
        n (prg-comment-pad-field ':author)
        user-full-name 
        (if prg-comment-company (concat "\t(" prg-comment-company ")"))
        n (prg-comment-fct-sep) n)
)

;; Character used to build inline separator
(setq prg-comment-in-line-char prg-comment-fct-char)

;; Template for In-line separator
(setq prg-comment-in-line
      '((prg-comment-in-line-sep)
        n (P "Block description: ")
        n (prg-comment-in-line-sep) n)
)

;; Character used to build maintenance block
(setq prg-comment-maint-char ?/)

;; Template for Maintenance header
(setq prg-comment-maint-header
      '((prg-comment-maint-sep)
        n (upcase (prg-comment-get-text ':maint))
        (if prg-comment-company (concat " " prg-comment-company))
        n (P "Description of the maintenance: ")
        n (prg-comment-pad-field ':author) user-full-name 
        n (prg-comment-pad-field ':date)
        (format-time-string "%d %b %Y %H:%M:%S")
        n (prg-comment-pad-field ':PCR) (P "Change request number: ")
        n (prg-comment-maint-sep) n)
)

;; Template for Maintenance footer
(setq prg-comment-maint-footer
      '((prg-comment-maint-sep)
        n (upcase (concat (prg-comment-get-text ':end) " "
        (prg-comment-get-text ':maint)))
        (if prg-comment-company (concat " " prg-comment-company))
        n (prg-comment-maint-sep) n)
)

;; Template for Log header
(setq prg-comment-log-header
      '((prg-comment-mod-sep)
        n (P "Log name: ")
        n (prg-comment-mod-sep)
        n (prg-comment-pad-field ':desc) (P "Description: ")
        n (prg-comment-pad-field ':source) (P "Generator name: ")
        n (prg-comment-pad-field ':creat-date)
        (format-time-string "%d/%m/%Y")
        n (prg-comment-mod-sep) n)
)
