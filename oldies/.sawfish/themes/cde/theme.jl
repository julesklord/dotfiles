;; theme file, written Wed May 17 14:26:43 2000
;; created by sawfish-themer -- DO NOT EDIT!

(require 'make-theme)

(let
    ((patterns-alist
      '(("maximize"
         (inactive
          "max_n.png")
         (focused
          "max_h.png")
         (highlighted
          "max_h.png")
         (clicked
          "max_c.png"))
        ("title"
         (inactive
          "title_n.png"
          (border
           1
           1
           0
           0))
         (focused
          "title_h.png"
          (border
           1
           1
           0
           0))
         (highlighted
          "title_h.png"
          (border
           1
           1
           0
           0))
         (clicked
          "title_c.png"
          (border
           1
           1
           0
           0)))
        ("minimize"
         (inactive
          "iconify_n.png")
         (focused
          "iconify_h.png")
         (highlighted
          "iconify_h.png")
         (clicked
          "iconify_c.png"))
        ("top-right"
         (inactive
          "top_right_resize_n.png")
         (focused
          "top_right_resize_h.png")
         (highlighted
          "top_right_resize_h.png"))
        ("top"
         (inactive
          "resize_top_n.png"
          (border
           1
           1
           0
           0))
         (focused
          "resize_top_h.png"
          (border
           1
           1
           0
           0))
         (highlighted
          "resize_top_h.png"
          (border
           1
           1
           0
           0)))
        ("menu"
         (inactive
          "menu_n.png")
         (focused
          "menu_h.png")
         (highlighted
          "menu_h.png")
         (clicked
          "menu_c.png"))
        ("top-left"
         (inactive
          "top_left_resize_n.png")
         (focused
          "top_left_resize_h.png")
         (highlighted
          "top_left_resize_h.png"))
        ("bottom-right"
         (inactive
          "bottom_right_resize_n.png")
         (focused
          "bottom_right_resize_h.png")
         (highlighted
          "bottom_right_resize_h.png"))
        ("bottom-left"
         (inactive
          "bottom_left_resize_n.png")
         (focused
          "bottom_left_resize_h.png")
         (highlighted
          "bottom_left_resize_h.png"))
        ("left"
         (inactive
          "resize_left_n.png"
          (border
           0
           0
           1
           1))
         (focused
          "resize_left_h.png"
          (border
           0
           0
           1
           1))
         (highlighted
          "resize_left_h.png"
          (border
           0
           0
           1
           1)))
        ("right"
         (inactive
          "resize_right_n.png"
          (border
           0
           0
           1
           1))
         (focused
          "resize_right_h.png"
          (border
           0
           0
           1
           1))
         (highlighted
          "resize_right_h.png"
          (border
           0
           0
           1
           1)))
        ("bottom"
         (inactive
          "resize_bottom_n.png"
          (border
           1
           1
           0
           0))
         (focused
          "resize_bottom_h.png"
          (border
           1
           1
           0
           0))
         (highlighted
          "resize_bottom_h.png"
          (border
           1
           1
           0
           0)))
        ("shaded-right"
         (inactive
          "shaded_right_n.png")
         (focused
          "shaded_right_h.png")
         (highlighted
          "shaded_right_h.png"))
        ("shaded-left"
         (inactive
          "shaded_left_n.png")
         (focused
          "shaded_left_h.png")
         (highlighted
          "shaded_left_h.png"))))

     (frames-alist
      '(("normal"
         ((top-edge . -16)
          (right-edge . 0)
          (background . "maximize")
          (class . maximize-button))
         ((top-edge . -16)
          (right-edge . 16)
          (background . "minimize")
          (class . iconify-button))
         ((right-edge . -5)
          (top-edge . -21)
          (background . "top-right")
          (class . top-right-corner))
         ((y-justify . center)
          (right-edge . 32)
          (left-edge . 16)
          (top-edge . -16)
          (x-justify . center)
          (text . window-name)
          (background . "title")
          (class . title))
         ((left-edge . 16)
          (right-edge . 16)
          (top-edge . -21)
          (background . "top")
          (class . top-border))
         ((top-edge . -16)
          (left-edge . 0)
          (background . "menu")
          (class . menu-button))
         ((left-edge . -5)
          (top-edge . -21)
          (background . "top-left")
          (class . top-left-corner))
         ((right-edge . -5)
          (bottom-edge . -5)
          (background . "bottom-right")
          (class . bottom-right-corner))
         ((left-edge . -5)
          (bottom-edge . -5)
          (background . "bottom-left")
          (class . bottom-left-corner))
         ((left-edge . -5)
          (bottom-edge . 16)
          (top-edge . 0)
          (background . "left")
          (class . left-border))
         ((top-edge . 0)
          (right-edge . -5)
          (bottom-edge . 16)
          (background . "right")
          (class . right-border))
         ((left-edge . 16)
          (right-edge . 17)
          (bottom-edge . -5)
          (background . "bottom")
          (class . bottom-border)))
        ("shaped"
         ((top-edge . -16)
          (right-edge . 0)
          (background . "maximize")
          (class . maximize-button))
         ((right-edge . 16)
          (top-edge . -16)
          (background . "minimize")
          (class . iconify-button))
         ((left-edge . 16)
          (right-edge . 32)
          (top-edge . -16)
          (y-justify . center)
          (x-justify . center)
          (text . window-name)
          (background . "title")
          (class . title))
         ((top-edge . -21)
          (right-edge . 16)
          (left-edge . 16)
          (background . "top")
          (class . top-border))
         ((left-edge . 0)
          (top-edge . -16)
          (background . "menu")
          (class . menu-button))
         ((right-edge . -5)
          (top-edge . -21)
          (background . "shaded-right")
          (class . right-border))
         ((background . "shaded-left")
          (top-edge . -21)
          (left-edge . -5)
          (class . left-border))
         ((top-edge . 0)
          (background . "bottom")
          (right-edge . 17)
          (left-edge . 16)
          (class . bottom-border)))
        ("nil")
        ("transient"
         ((top-edge . -21)
          (right-edge . -5)
          (background . "top-right")
          (class . top-right-corner))
         ((top-edge . -16)
          (left-edge . 16)
          (right-edge . 0)
          (y-justify . center)
          (x-justify . center)
          (text . window-name)
          (background . "title")
          (class . title))
         ((left-edge . 16)
          (right-edge . 16)
          (top-edge . -21)
          (background . "top")
          (class . top-border))
         ((top-edge . -16)
          (left-edge . 0)
          (background . "menu")
          (class . menu-button))
         ((left-edge . -5)
          (top-edge . -21)
          (background . "top-left")
          (class . top-left-corner))
         ((right-edge . -5)
          (bottom-edge . -5)
          (background . "bottom-right")
          (class . bottom-right-corner))
         ((left-edge . -5)
          (bottom-edge . -5)
          (background . "bottom-left")
          (class . bottom-left-corner))
         ((left-edge . -5)
          (bottom-edge . 16)
          (top-edge . 0)
          (background . "left")
          (class . left-border))
         ((top-edge . 0)
          (right-edge . -5)
          (bottom-edge . 16)
          (background . "right")
          (class . right-border))
         ((left-edge . 16)
          (right-edge . 17)
          (bottom-edge . -5)
          (background . "bottom")
          (class . bottom-border)))
        ("shaped transient"
         ((right-edge . 0)
          (left-edge . 16)
          (top-edge . -16)
          (y-justify . center)
          (x-justify . center)
          (text . window-name)
          (background . "title")
          (class . title))
         ((top-edge . -21)
          (right-edge . 16)
          (left-edge . 16)
          (background . "top")
          (class . top-border))
         ((left-edge . 0)
          (top-edge . -16)
          (background . "menu")
          (class . menu-button))
         ((right-edge . -5)
          (top-edge . -21)
          (background . "shaded-right")
          (class . right-border))
         ((background . "shaded-left")
          (top-edge . -21)
          (left-edge . -5)
          (class . left-border))
         ((top-edge . 0)
          (background . "bottom")
          (right-edge . 17)
          (left-edge . 16)
          (class . bottom-border)))))

     (mapping-alist
      '((default . "normal")
        (shaped . "shaped")
        (transient . "transient")
        (unframed . "nil")
        (shaped-transient . "shaped transient")))

     (theme-name 'cde))

  (add-frame-style
   theme-name (make-theme patterns-alist frames-alist mapping-alist))
  (when (boundp 'mark-frame-style-editable)
    (mark-frame-style-editable theme-name)))
