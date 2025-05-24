;; clean-gtk/theme.jl -- More GTK-mimicry
;; $Id$

;; Copyright (C) 1999 John Harper <john@dcs.warwick.ac.uk>

;; This file is part of sawmill.

;; sawmill is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; sawmill is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with sawmill; see the file COPYING.  If not, write to
;; the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

(require 'gtkrc)

;; Commentary:

;; This is similar to the `gtk' theme, but instead of using the colors
;; or bitmaps from the gtk style to define the frame, we just use the
;; background colors to affect the colors of a pre-defined set of
;; images

;; Doing it this way allows us to give the theme a better look; also,
;; the buttons get recoloured as well as the borders

(let*
    ((make-image
      (lambda (file)
	(copy-image (make-image file))))

     (recolor-image
      (lambda (img color bright)
	(when (and (imagep img) (colorp color))
	  (let*
	      ((rgb (color-rgb color))
	       (red (nth 0 rgb))
	       (green (nth 1 rgb))
	       (blue (nth 2 rgb)))
	    (if bright
		(setq bright 255)
	      (setq bright 224))
	    ;; use the color modifiers
	    (set-image-modifier
	     img nil '(255 255 255))
	    (set-image-modifier
	     img 'red (list (/ red 256) bright (/ red 256)))
	    (set-image-modifier
	     img 'green (list (/ green 256) bright (/ green 256)))
	    (set-image-modifier
	     img 'blue (list (/ blue 256) bright (/ blue 256)))))))

     (normal-bl-i (list (make-image "bl.png") (make-image "bl.png")))
     (normal-br-i (list (make-image "br.png") (make-image "br.png")))
     (normal-tl-i (list (make-image "tl.png") (make-image "tl.png")))
     (normal-tr-i (list (make-image "tr.png") (make-image "tr.png")))

     (normal-left-i
      (list (set-image-border (make-image "left.png") 0 0 1 2)
	    (set-image-border (make-image "left.png") 0 0 1 2)))
     (normal-right-i
      (list (set-image-border (make-image "right.png") 0 0 1 2)
	    (set-image-border (make-image "right.png") 0 0 1 2)))
     (normal-top-i
      (list (set-image-border (make-image "top.png") 1 2 0 0)
	    (set-image-border (make-image "top.png") 1 2 0 0)))
     (normal-bottom-i
      (list (set-image-border (make-image "bottom.png") 1 2 0 0)
	    (set-image-border (make-image "bottom.png") 1 2 0 0)))

     (normal-menu-i
      (list (make-image "menu.png") (make-image "menu.png") nil
	    (make-image "menu-c.png")))
     (normal-minimize-i
      (list (make-image "minimize.png") (make-image "minimize.png") nil
	    (make-image "minimize-c.png")))
     (normal-maximize-i
      (list (make-image "maximize.png") (make-image "maximize.png") nil
	    (make-image "maximize-c.png")))
     (normal-close-i
      (list (make-image "close.png") (make-image "close.png") nil
	    (make-image "close-c.png")))

     (normal-title-i
      (list (set-image-border (make-image "title.png") 7 7 2 3)
	    (set-image-border (make-image "title.png") 7 7 2 3)))

     (normal-images
      (list normal-bl-i normal-br-i normal-tl-i normal-tr-i
	    normal-left-i normal-right-i normal-top-i normal-bottom-i
	    normal-menu-i normal-minimize-i normal-maximize-i normal-close-i
	    normal-title-i))

     (rebuild-frames
      (lambda ()
	(when gtkrc-background
	  (mapc (lambda (images)
		  (recolor-image (nth 0 images) (car gtkrc-background) nil)
		  (recolor-image (nth 1 images) (car gtkrc-background) t)
		  (recolor-image (nth 3 images) (car gtkrc-background) t))
		normal-images))
	(mapc (lambda (w)
		(when (eq (window-get w 'current-frame-style) 'clean-gtk)
		  (set-window-frame-style w 'clean-gtk)))
	      (managed-windows))))

     (normal-frame `(((background . ,normal-tl-i)
		      (left-edge . -3)
		      (top-edge . -22)
		      (class . top-left-corner))
		     ((background . ,normal-left-i)
		      (left-edge . -3)
		      (top-edge . -10)
		      (bottom-edge . 8)
		      (class . left-border))
		     ((background . ,normal-bl-i)
		      (left-edge . -3)
		      (bottom-edge . -3)
		      (class . bottom-left-corner))
		     ((background . ,normal-bottom-i)
		      (left-edge . 8)
		      (right-edge . 8)
		      (bottom-edge . -3)
		      (class . bottom-border))
		     ((background . ,normal-br-i)
		      (right-edge . -3)
		      (bottom-edge . -3)
		      (class . bottom-right-corner))
		     ((background . ,normal-right-i)
		      (right-edge . -3)
		      (bottom-edge . 8)
		      (top-edge . -10)
		      (class . right-border))
		     ((background . ,normal-tr-i)
		      (right-edge . -3)
		      (top-edge . -22)
		      (class . top-right-corner))
		     ((background . ,normal-top-i)
		      (left-edge . 9)
		      (right-edge . 8)
		      (top-edge . -22)
		      (class . top-border))
		     ((background . ,normal-menu-i)
		      (left-edge  . 0)
		      (top-edge . -18)
		      (class . menu-button))
		     ((background . ,normal-close-i)
		      (right-edge . 0)
		      (top-edge . -18)
		      (class . close-button))
		     ((background . ,normal-maximize-i)
		      (right-edge . 16)
		      (top-edge . -18)
		      (class . maximize-button))
		     ((background . ,normal-minimize-i)
		      (right-edge . 32)
		      (top-edge . -18)
		      (class . iconify-button))
		     ((background . ,normal-title-i)
		      (left-edge . 17)
		      (right-edge . 48)
		      (top-edge . -18)
		      (class . title)
		      (foreground . "black")
		      (text . ,window-name)
		      (x-justify . 8)
		      (y-justify . center))))

     (shaped-frame `(((background . ,normal-tl-i)
		      (left-edge . -3)
		      (top-edge . -22)
		      (class . top-left-corner))
		     ((background . ,normal-left-i)
		      (left-edge . -3)
		      (top-edge . -10)
		      (height . 3)
		      (class . left-border))
		     ((background . ,normal-bl-i)
		      (left-edge . -3)
		      (top-edge . -7)
		      (class . bottom-left-corner))
		     ((background . ,normal-bottom-i)
		      (left-edge . 8)
		      (right-edge . 8)
		      (top-edge . 0)
		      (class . bottom-border))
		     ((background . ,normal-br-i)
		      (right-edge . -3)
		      (top-edge . -7)
		      (class . bottom-right-corner))
		     ((background . ,normal-right-i)
		      (right-edge . -3)
		      (top-edge . -10)
		      (height . 3)
		      (class . right-border))
		     ((background . ,normal-tr-i)
		      (right-edge . -3)
		      (top-edge . -22)
		      (class . top-right-corner))
		     ((background . ,normal-top-i)
		      (left-edge . 9)
		      (right-edge . 8)
		      (top-edge . -22)
		      (class . top-border))
		     ((background . ,normal-menu-i)
		      (left-edge  . 0)
		      (top-edge . -18)
		      (class . menu-button))
		     ((background . ,normal-close-i)
		      (right-edge . 0)
		      (top-edge . -18)
		      (class . close-button))
		     ((background . ,normal-maximize-i)
		      (right-edge . 16)
		      (top-edge . -18)
		      (class . maximize-button))
		     ((background . ,normal-minimize-i)
		      (right-edge . 32)
		      (top-edge . -18)
		      (class . iconify-button))
		     ((background . ,normal-title-i)
		      (left-edge . 17)
		      (right-edge . 48)
		      (top-edge . -18)
		      (class . title)
		      (foreground . "black")
		      (text . ,window-name)
		      (x-justify . 8)
		      (y-justify . center))))

     (transient-frame `(((background . ,normal-tl-i)
			 (left-edge . -3)
			 (top-edge . -3)
			 (class . top-left-corner))
			((background . ,normal-left-i)
			 (left-edge . -3)
			 (top-edge . 9)
			 (bottom-edge . 8)
			 (class . left-border))
			((background . ,normal-bl-i)
			 (left-edge . -3)
			 (bottom-edge . -3)
			 (class . bottom-left-corner))
			((background . ,normal-bottom-i)
			 (left-edge . 8)
			 (right-edge . 8)
			 (bottom-edge . -3)
			 (class . bottom-border))
			((background . ,normal-br-i)
			 (right-edge . -3)
			 (bottom-edge . -3)
			 (class . bottom-right-corner))
			((background . ,normal-right-i)
			 (right-edge . -3)
			 (bottom-edge . 8)
			 (top-edge . 8)
			 (class . right-border))
			((background . ,normal-tr-i)
			 (right-edge . -3)
			 (top-edge . -3)
			 (class . top-right-corner))
			((background . ,normal-top-i)
			 (left-edge . 9)
			 (right-edge . 8)
			 (top-edge . -3)
			 (class . title))))

     (shaped-transient-frame `(((background . ,normal-top-i)
				(left-edge . 0)
				(right-edge . 0)
				(top-edge . -3)
				(class . title)))))

  (add-frame-style 'clean-gtk
		   (lambda (w type)
		     (cond ((eq type 'shaped)
			    shaped-frame)
			   ((eq type 'transient)
			    transient-frame)
			   ((eq type 'shaped-transient)
			    shaped-transient-frame)
			   ((eq type 'unframed)
			    nil-frame)
			   (t
			    normal-frame))))

  (unless batch-mode
    (rebuild-frames))

  (gtkrc-call-after-changed rebuild-frames))
