;; nanoGUI/theme.jl

;; Copyright (C) 1999 Mike Rosellini <mike@unlikely.org>

;; This theme was based on the microGUI by Ryan Lovett
;; <ryan@ocf.berkeley.edu>.  Both the Lisp and the border images
;; were simplified to my tastes from Ryan's theme.  Thanks to John
;; Harper <john@dcs.warwick.ac.uk> for making the modifications for
;; lexical scope to microGUI so that I might duplicate them here
;; and, of course, for writing Sawmill.


;; Revision History

;; 0.1  First rev.

;; 0.2  Fixed top-border-was-bottom.

;; 0.3  Added beveled devision between side and corner to make
;;      resizing different dimensions easier.
;;      Consolodated t.xpm and b.xpm into h.xpm.
;;      Consolodated l.xpm and r.xpm into v.xpm.
;;      Fixed colors so that the exact same four are used in all
;;      frame parts.


(let*
    (
     ;; 14x5
     (horizontal-image (make-image "h.xpm"))

     ;; 5x14
     (vertical-image (make-image "v.xpm"))

     ;; 22x22
     (top-left-image (make-image "tl.xpm"))

     ;; 22x22
     (top-right-image (make-image "tr.xpm"))

     ;; 22x22
     (bottom-left-image (make-image "bl.xpm"))

     ;; 22x22
     (bottom-right-image (make-image "br.xpm"))


     (frame `(
          ;; top-left corner
          ((background . ,top-left-image)
	       (left-edge . -5)
	       (top-edge . -5)
	       (class . top-left-corner))

	      ;; left border
	      ((background . ,vertical-image)
	       (left-edge . -5)
	       (top-edge . 17)
	       (bottom-edge . 17)
	       (class . left-border))

	      ;; top-right corner
	      ((background . ,top-right-image)
	       (right-edge . -5)
	       (top-edge . -5)
	       (class . top-right-corner))

	      ;; right border
	      ((background . ,vertical-image)
	       (right-edge . -5)
	       (top-edge . 17)
	       (bottom-edge . 17)
	       (class . right-border))

	      ;; bottom border
	      ((background . ,horizontal-image)
	       (left-edge . 17)
	       (right-edge . 17)
	       (bottom-edge . -5)
	       (class . bottom-border))

	      ;; top border
	      ((background . ,horizontal-image)
	       (left-edge . 17)
	       (right-edge . 17)
	       (top-edge . -5)
	       (class . top-border))

	      ;; bottom-left corner
	      ((background . ,bottom-left-image)
	       (left-edge . -5)
	       (bottom-edge . -5)
	       (class . bottom-left-corner))

	      ;; bottom-right corner
	      ((background . ,bottom-right-image)
	       (right-edge . -5)
	       (bottom-edge . -5)
	       (class . bottom-right-corner)))))

  (add-frame-style 'nanoGUI
		   (lambda (w type)
		     (cond ((eq type 'shaped)
			    nil-frame)
			   ((eq type 'transient)
			    frame)
			   ((eq type 'shaped-transient)
			    nil-frame)
			   ((eq type 'unframed)
			    nil-frame)
			   (t
			    frame))))

  (call-after-property-changed
   'WM_NAME (lambda ()
	      (rebuild-frames-with-style 'nanoGUI))))
