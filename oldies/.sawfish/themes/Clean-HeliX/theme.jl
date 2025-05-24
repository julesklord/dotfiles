;; clean/theme.jl

;; Copyright (C) 2000 Justin R. Miller <justin@solidlinux.com>
;; Based on a theme by Dwight Engen <dengen40@yahoo.com>

;; This theme is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; It is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with sawmill; see the file COPYING.  If not, write to
;; the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

;; images

(let*
  (
    ;; 6x24
    (corner-top-left	(list	(make-image "clean_top_left.png")
    				(make-image "clean_top_left_focused.png")))
    ;; 6x24
    (corner-top-right	(list	(make-image "clean_top_right.png")
    				(make-image "clean_top_right_focused.png")))

    ;; 13x24
    (minimize-image	(list 	(make-image "clean_minimize.png")
    				(make-image "clean_minimize_focused.png")
    					nil
    				(make-image "clean_minimize_clicked.png")))
    ;; 13x24
    (maximize-image	(list 	(make-image "clean_maximize.png")
    				(make-image "clean_maximize_focused.png")
    					nil
    				(make-image "clean_maximize_clicked.png")))
    ;; 13x24
    (close-image	(list 	(make-image "clean_close.png")
    				(make-image "clean_close_focused.png")
    					nil
    				(make-image "clean_close_clicked.png")))

    ;; 15x26
    (menu-image		(list 	(make-image "clean_menu.png")
    				(make-image "clean_menu_focused.png")
    					nil
    				(make-image "clean_menu_clicked.png")))
    ;; 1x20
    (title-image	(list	(make-image "clean_title.png")
    				(make-image "clean_title_focused.png")))
    ;; 1x3
    (side-bottom		(make-image "clean_bottom.png"))
    ;; 1x1
    (side-bottom-shaded		(make-image "clean_bottom_shaded.png"))
    ;; 1x4
    (side-top			(make-image "clean_top.png"))
    ;; 10x10
    (corner-bottom-left		(make-image "clean_bottom_left.png"))
    ;; 10x10
    (corner-bottom-right	(make-image "clean_bottom_right.png"))
    ;; 3x1
    (side-left			(make-image "clean_side_left.png"))
    ;; 3x1
    (side-right			(make-image "clean_side_right.png"))

    ;; special images for transients
    ;; 1x3
    (trans-side-top		(make-image "clean_trans_top.png"))
    ;; 10x10
    (trans-corner-top-left	(make-image "clean_trans_top_left.png"))
    ;; 10x10
    (trans-corner-top-right	(make-image "clean_trans_top_right.png"))

    ;; standard frame
    (frame `(((background . ,close-image)
              (right-edge . 3)
              (width . 13)
              (top-edge . -24)
              (class . close-button))

             ;; maximize button
             ((background . ,maximize-image)
              (right-edge . 16)
              (top-edge . -24)
              (class . maximize-button))

             ;; minimize button
             ((background . ,minimize-image)
              (right-edge . 29)
              (top-edge . -24)
              (class . iconify-button))

             ;; title bar
             ((background . ,title-image)
              (foreground . "white")
              (text . ,window-name)
              (x-justify . 0)
              (y-justify . 1)
              (left-edge . 3)
              (right-edge . 42)
              (top-edge . -20)
              (class . title))

             ;; top side
             ((background . ,side-top)
              (left-edge . 3)
              (right-edge . -1)
              (top-edge . -24)
              (height . 4)
              (class . top-border))

             ;; right frame
             ((background . ,side-right)
              (right-edge . -3)
              (width . 3)
              (top-edge . 0)
              (bottom-edge . 0)
              (class . right-border))

             ;; left frame
             ((background . ,side-left)
              (left-edge . -3)
              (width . 3)
              (top-edge . 0)
              (bottom-edge . 0)
              (class . left-border))

             ;; bottom frame
             ((background . ,side-bottom)
              (left-edge . 0)
              (right-edge . 0)
              (bottom-edge . -3)
              (height . 3)
              (class . bottom-border))

             ;; top-left corner
             ((background . ,corner-top-left)
              (left-edge . -3)
              (width . 6)
              (top-edge . -24)
              (height . 24)
              (class . top-left-corner))

             ;; top-right corner
             ((background . ,corner-top-right)
              (right-edge . -3)
              (width . 6)
              (top-edge . -24)
              (height . 24)
              (class . top-right-corner))

             ;; bottom-left corner
             ((background . ,corner-bottom-left)
              (left-edge . -3)
              (width . 10)
              (bottom-edge . -3)
              (height . 10)
              (class . bottom-left-corner))

             ;; bottom-right corner
             ((background . ,corner-bottom-right)
              (right-edge . -3)
              (width . 10)
              (bottom-edge . -3)
              (height . 10)
              (class . bottom-right-corner))))

    ;; shaped frame
    (shaped-frame `(((background . ,close-image)
              (right-edge . 3)
              (width . 13)
              (top-edge . -24)
              (height . 24)
              (class . close-button))

             ;; maximize button
             ((background . ,maximize-image)
              (right-edge . 16)
              (top-edge . -24)
              (class . maximize-button))

             ;; minimize button
             ((background . ,minimize-image)
              (right-edge . 29)
              (top-edge . -24)
              (class . iconify-button))

             ;; title bar
             ((background . ,title-image)
              (foreground . "white")
              (text . ,window-name)
              (x-justify . 0)
              (y-justify . 1)
              (left-edge . 3)
              (right-edge . 42)
              (top-edge . -20)
              (class . title))

             ;; top side
             ((background . ,side-top)
              (left-edge . 3)
              (right-edge . -1)
              (top-edge . -24)
              (height . 4)
              (class . top-border))

             ;; top-left corner
             ((background . ,corner-top-left)
              (left-edge . -3)
              (width . 6)
              (top-edge . -24)
              (height . 24)
              (class . top-left-corner))

             ;; top-right corner
             ((background . ,corner-top-right)
              (right-edge . -3)
              (width . 6)
              (top-edge . -24)
              (height . 24)
              (class . top-right-corner))

             ;; bottom frame
             ((background . ,side-bottom-shaded)
              (left-edge . -3)
              (right-edge . -3)
              (top-edge . 0)
              (class . bottom-border))))

    (transient-frame `(((background . ,trans-side-top)
                        (left-edge . 0)
                        (right-edge . 0)
                        (top-edge . -3)
                        (height . 3)
                        (class . title))
                       ((background . ,side-bottom)
                        (left-edge . 0)
                        (right-edge . 0)
                        (bottom-edge . -3)
                        (height . 3)
                        (class . bottom-border))
                       ((background . ,side-left)
                        (left-edge . -3)
                        (width . 3)
                        (top-edge . 0)
                        (bottom-edge . 0)
                        (class . left-border))
                       ((background . ,side-right)
                        (right-edge . -3)
                        (width . 3)
                        (top-edge . 0)
                        (bottom-edge . 0)
                        (class . right-border))
                       ;; top-right corner
                       ((background . ,trans-corner-top-right)
                        (right-edge . -3)
                        (width . 10)
                        (top-edge . -3)
                        (height . 10)
                        (class . top-right-corner))
                       ;; top-left corner
                       ((background . ,trans-corner-top-left)
                        (left-edge . -3)
                        (width . 10)
                        (top-edge . -3)
                        (height . 10)
                        (class . top-left-corner))
                       ;; bottom-left corner
                       ((background . ,corner-bottom-left)
                        (left-edge . -3)
                        (width . 10)
                        (bottom-edge . -3)
                        (height . 10)
                        (class . bottom-left-corner))
                       ;; bottom-right corner
                       ((background . ,corner-bottom-right)
                        (right-edge . -3)
                        (width . 10)
                        (bottom-edge . -3)
                        (height . 10)
                        (class . bottom-right-corner))))
  )


  (add-frame-style 'Clean-HeliX
    (lambda (w type)
      (case type
        ((default) frame)
        ((transient) transient-frame)
        ((shaped) shaped-frame)
        ((shapted-transient) shaped-frame))))
)
