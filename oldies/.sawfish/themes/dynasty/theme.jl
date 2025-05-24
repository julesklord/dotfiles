; dynasty/theme.jl

(let*
	 (
     ;; Title
     (title-image               (list (make-image "title-inactive.png")
                                      (make-image "title.png")))
     ;; Buttons
     (close-image               (list (make-image "button.close-inactive.png")
                                      (make-image "button.close.png")))
     (maximize-image            (list (make-image "button.maximize-inactive.png")
                                      (make-image "button.maximize.png")))
     (minimize-image            (list (make-image "button.minimize-inactive.png")
                                      (make-image "button.minimize.png")))
     ;; Top Border
     (border-top-left-image     (make-image "border.top-left.png"))
     (border-top-image          (make-image "border.top-center.png"))
     (border-top-right-image    (make-image "border.top-right.png"))
     ;; Right Border
     (border-right-top-image    (make-image "border.right-top.png"))
     (border-right-image        (make-image "border.right-center.png"))
     (border-right-bottom-image (make-image "border.right-bottom.png"))
     ;; Bottom Border
     (border-bottom-left-image  (make-image "border.bottom-left.png"))
     (border-bottom-image       (make-image "border.bottom-center.png"))
     (border-bottom-right-image (make-image "border.bottom-right.png"))
     ;; Left Border
     (border-left-top-image     (make-image "border.left-top.png"))
     (border-left-image         (make-image "border.left-center.png"))
     (border-left-bottom-image  (make-image "border.left-bottom.png"))
     ;; Corners
     (corner-top-right-image    (list (make-image "corner.top-right-inactive.png")
                                      (make-image "corner.top-right.png")))
     (corner-bottom-right-image (make-image "corner.bottom-right.png"))
     (corner-bottom-left-image  (make-image "corner.bottom-left.png"))
     (corner-top-left-image     (list (make-image "corner.top-left-inactive.png")
                                      (make-image "corner.top-left.png")))
     
	  ;; (top-right-image    (list (make-image "top-right-inactive.png")
										 ;; (make-image "top-right-active.png")))

	  (frame `(
				  ;; Top Border
              ((background  . ,border-top-left-image)
               (top-edge    . -9)
               (left-edge   . 2)
               (class       . top-left-corner))
				  ((background  . ,border-top-image)
					(top-edge    . -9)
					(left-edge   . 26)
					(right-edge  . 26)
					(class       . top-border))
              ((background  . ,border-top-right-image)
               (top-edge    . -9)
               (right-edge  . 2)
               (class       . top-right-corner))

              ;; Right Border
              ((background  . ,border-right-top-image)
               (top-edge    . 0)
               (right-edge  . -5)
               (class       . top-right-corner))
				  ((background  . ,border-right-image)
					(top-edge    . 22)
					(bottom-edge . 26)
               (right-edge  . -5)
					(class       . right-border))
              ((background  . ,border-right-bottom-image)
               (bottom-edge . 0)
               (right-edge  . -5)
               (class       . bottom-right-corner))
              
              ;; Bottom Border
              ((background  . ,border-bottom-left-image)
               (left-edge   . 0)
               (bottom-edge . -5)
               (class       . bottom-left-corner))
				  ((background  . ,border-bottom-image)
					(left-edge   . 26)
					(right-edge  . 26)
               (bottom-edge . -5)
					(class       . bottom-border))
              ((background  . ,border-bottom-right-image)
               (right-edge  . 0)
               (bottom-edge . -5)
               (class       . bottom-right-corner))
              
              ;; Left Border
              ((background  . ,border-left-top-image)
               (top-edge    . 0)
               (left-edge   . -5)
               (class       . top-left-corner))
				  ((background  . ,border-left-image)
					(top-edge    . 22)
					(bottom-edge . 26)
               (left-edge   . -5)
					(class       . left-border))
              ((background  . ,border-left-bottom-image)
               (bottom-edge . 0)
               (left-edge   . -5)
               (class       . bottom-left-corner))

              ;; Title
              ((background  . ,title-image)
               (top-edge    . -4)
               (left-edge   . 2)
               (right-edge  . 2)
               (class       . title))

              ;; Corners
              ((background  . ,corner-top-right-image)
               (right-edge  . -5)
               (top-edge    . -9)
               (class       . top-right-corner))
              ((background  . ,corner-bottom-right-image)
               (right-edge  . -5)
               (bottom-edge . -5)
               (class       . bottom-right-corner))
              ((background  . ,corner-bottom-left-image)
               (left-edge   . -5)
               (bottom-edge . -5)
               (class       . bottom-left-corner))
              ((background  . ,corner-top-left-image)
               (left-edge   . -5)
               (top-edge    . -9)
               (class       . top-left-corner))
                            
				  ;; Buttons
				  ((background  . ,close-image)
					(right-edge  . 7)
					(top-edge    . -9)
					(class       . close-button))
				  ((background  . ,maximize-image)
					(right-edge  . 20)
					(top-edge    . -9)
					(class       . maximize-button))
				  ((background  . ,minimize-image)
					(right-edge  . 33)
					(top-edge    . -9)
					(class       . minimize-button))
				  )))

  (add-frame-style 'dynasty
                   (lambda (w type)
                     (cond 
                      ((eq type 'unframed) nil-frame)
                      (t frame)))))
