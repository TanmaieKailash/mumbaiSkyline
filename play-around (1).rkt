#lang racket
(require 2htdp/image)
(require csc151)

;;; Author: Tanmaie Kailash
;;; Date: 11.14.2020
;;; CSC 151 2020 Fall Term 2
;;; The overall image for 'Part 2: Freestyle' is defined to be 'mumbai-skyline'
;;; Acknowledgements:
;;; The reference image for 'Part 2: Freestyle' was taken from the following URL (but I cropped the right portion out a little):
;;; https://www.youtube.com/watch?v=mzNEPCDtnQs

;;; For Part 2: Freestyle
;;; The overall image is defined to be 'mumbai-skyline'


;;; Color definitions

(define salmon-color
  (make-color 245 161 137))

(define dark-salmon-color
  (make-color 238 143 125))

(define light-brown-color
  (make-color 172 112 104))

(define mid-brown-color
  (make-color 129 89 89))

(define dark-brown-color
  (make-color 113 83 83))

(define muddy-grey-building-color
  (make-color 65 57 58))

(define black-building-color
  (make-color 33 32 37))

(define dark-grey-building-color
  (make-color 59 59 61))

(define dark-brown-building-color
  (make-color 46 32 41))


;;; Procedures used to make the background and sea

(define sky-rectangle
  (lambda (width color)
    (rectangle (* width 20) 20 'solid color)))

(define general-rectangle
  (lambda (width height color)
    (rectangle width height 'solid color)))

(define salmon (general-rectangle 20 10 salmon-color))

(define dark-salmon (general-rectangle 20 10 dark-salmon-color))

(define light-brown (general-rectangle 20 10 light-brown-color))

(define mid-brown (general-rectangle 20 10 mid-brown-color))

(define dark-brown (general-rectangle 20 10 dark-brown-color))

(define sea-reflection-rectangle
  (lambda (mode)
    (rectangle 700 10 mode black-building-color)))


;;;Definitions for rows and background

(define row01-background
  (beside
   (above light-brown mid-brown)
   (sky-rectangle 1 mid-brown-color)
   (above mid-brown dark-brown)
   (above mid-brown dark-brown)
   (sky-rectangle 8 dark-brown-color)
   (above mid-brown dark-brown)
   (above light-brown mid-brown)
   (sky-rectangle 2 light-brown-color)
   (above light-brown dark-salmon)
   (sky-rectangle 3 dark-salmon-color)
   (above dark-salmon salmon)
   (above dark-salmon salmon)
   (above dark-salmon salmon)
   (sky-rectangle 5 salmon-color)
   (above salmon dark-salmon)
   (above salmon dark-salmon)
   (sky-rectangle 2 dark-salmon-color)
   (above dark-salmon light-brown)
   (sky-rectangle 1 light-brown-color)
   (above light-brown mid-brown)))

(define row02-background
  (beside
   (sky-rectangle 2 mid-brown-color)
   (sky-rectangle 11 dark-brown-color)
   (above mid-brown dark-brown)
   (above light-brown mid-brown)
   (above dark-salmon light-brown)
   (sky-rectangle 2 dark-salmon-color)
   (above dark-salmon salmon)
   (above dark-salmon salmon)
   (sky-rectangle 3 salmon-color)
   (above salmon dark-salmon)
   (above salmon dark-salmon)
   (above salmon light-brown)
   (above salmon mid-brown)
   (above salmon light-brown)
   (above dark-salmon light-brown)
   (above dark-salmon light-brown)
   (sky-rectangle 1 dark-salmon-color)
   (above dark-salmon light-brown)
   (sky-rectangle 1 light-brown-color)
   (sky-rectangle 2 mid-brown-color)))

(define row03-background
  (beside
   (sky-rectangle 2 mid-brown-color)
   (above dark-brown mid-brown)
   (sky-rectangle 4 dark-brown-color)
   (above dark-brown mid-brown)
   (above dark-brown mid-brown)
   (above dark-brown mid-brown)
   (above dark-brown mid-brown)
   (above dark-brown mid-brown)
   (above dark-brown mid-brown)
   (above dark-brown mid-brown)
   (above dark-brown light-brown)
   (above light-brown dark-salmon)
   (sky-rectangle 2 salmon-color)
   (above salmon dark-salmon)
   (above salmon dark-salmon)
   (above salmon dark-salmon)
   (sky-rectangle 1 salmon-color)
   (above salmon dark-salmon)
   (above dark-salmon light-brown)
   (above dark-salmon mid-brown)
   (sky-rectangle 1 mid-brown-color)
   (sky-rectangle 1 dark-brown-color)
   (sky-rectangle 1 mid-brown-color)
   (above light-brown mid-brown)
   (sky-rectangle 1 light-brown-color)
   (above dark-salmon light-brown)
   (sky-rectangle 1 light-brown-color)
   (above mid-brown dark-brown)
   (sky-rectangle 1 mid-brown-color)
   (above mid-brown dark-brown)))

(define row04-background
  (beside
   (above mid-brown light-brown)
   (above mid-brown light-brown)
   (sky-rectangle 2 mid-brown-color)
   (above dark-brown mid-brown)
   (sky-rectangle 2 dark-brown-color)
   (above mid-brown dark-brown)
   (sky-rectangle 1 mid-brown-color)
   (above mid-brown light-brown)
   (sky-rectangle 3 dark-brown-color)
   (above mid-brown dark-brown)
   (above light-brown mid-brown)
   (sky-rectangle 3 salmon-color)
   (above dark-salmon salmon)
   (sky-rectangle 1 dark-salmon-color)
   (above dark-salmon salmon)
   (sky-rectangle 1 salmon-color)
   (above dark-salmon light-brown)
   (above light-brown mid-brown)
   (above dark-brown mid-brown)
   (above dark-brown light-brown)
   (above dark-brown mid-brown)
   (above dark-brown mid-brown)
   (above dark-brown light-brown)
   (above light-brown mid-brown)
   (above mid-brown dark-brown)
   (sky-rectangle 4 dark-brown-color)))

(define row05-background
  (beside
   (sky-rectangle 1 light-brown-color)
   (sky-rectangle 3 light-brown-color)
   (above mid-brown light-brown)
   (above dark-brown light-brown)
   (above mid-brown light-brown)
   (sky-rectangle 2 mid-brown-color)
   (sky-rectangle 1 light-brown-color)
   (above mid-brown light-brown)
   (above dark-brown mid-brown)
   (above dark-brown light-brown)
   (above light-brown dark-salmon)
   (sky-rectangle 1 salmon-color)
   (above salmon dark-salmon)
   (sky-rectangle 4 salmon-color)
   (above salmon light-brown)
   (above dark-salmon mid-brown)
   (sky-rectangle 3 dark-brown-color)
   (above light-brown dark-brown)
   (sky-rectangle 2 dark-brown-color)
   (sky-rectangle 2 mid-brown-color)
   (above dark-brown mid-brown)
   (sky-rectangle 4 dark-brown-color)))

(define row06-background
  (beside
   (sky-rectangle 2 light-brown-color)
   (above light-brown mid-brown)
   (sky-rectangle 2 mid-brown-color)
   (above light-brown mid-brown)
   (above light-brown mid-brown)
   (sky-rectangle 3 dark-brown-color)
   (above light-brown dark-salmon)
   (sky-rectangle 2 dark-salmon-color)
   (sky-rectangle 1 salmon-color)
   (sky-rectangle 3 dark-salmon-color)
   (above salmon dark-salmon)
   (above salmon dark-salmon)
   (sky-rectangle 1 salmon-color)
   (sky-rectangle 1 light-brown-color)
   (above dark-brown light-brown)
   (above dark-brown mid-brown)
   (sky-rectangle 5 dark-brown-color)
   (sky-rectangle 2 light-brown-color)
   (sky-rectangle 1 mid-brown-color)
   (above light-brown dark-brown)
   (above light-brown dark-brown)
   (sky-rectangle 2 dark-brown-color)))

(define row07-background
  (beside
   (sky-rectangle 2 light-brown-color)
   (above mid-brown light-brown)
   (sky-rectangle 2 mid-brown-color)
   (above mid-brown light-brown)
   (sky-rectangle 1 light-brown-color)
   (above light-brown dark-salmon)
   (above light-brown dark-salmon)
   (sky-rectangle 2 dark-salmon-color)
   (sky-rectangle 3 salmon-color)
   (sky-rectangle 2 dark-salmon-color)
   (above dark-salmon salmon)
   (above dark-salmon salmon)
   (sky-rectangle 1 dark-salmon-color)
   (above salmon dark-salmon)
   (sky-rectangle 2 dark-salmon-color)
   (above dark-brown salmon)
   (above dark-brown dark-salmon)
   (above mid-brown dark-salmon)
   (above mid-brown dark-salmon)
   (sky-rectangle 2 mid-brown-color)
   (above light-brown mid-brown)
   (sky-rectangle 1 mid-brown-color)
   (above mid-brown dark-brown)
   (sky-rectangle 4 dark-brown-color)))

(define row08-background
  (beside
   (sky-rectangle 5 light-brown-color)
   (above light-brown dark-salmon)
   (sky-rectangle 2 dark-salmon-color)
   (above dark-salmon salmon)
   (above dark-salmon salmon)
   (above dark-salmon salmon)
   (sky-rectangle 8 salmon-color)
   (above dark-salmon salmon)
   (above dark-salmon salmon)
   (sky-rectangle 3 salmon-color)
   (above dark-salmon salmon)
   (sky-rectangle 1 dark-salmon-color)
   (above light-brown dark-salmon)
   (above light-brown dark-salmon)
   (sky-rectangle 1 light-brown-color)
   (above mid-brown light-brown)
   (sky-rectangle 1 mid-brown-color)
   (above dark-brown mid-brown)
   (above dark-brown mid-brown)
   (sky-rectangle 2 dark-brown-color)))

(define row09-background
  (beside
   (sky-rectangle 1 dark-salmon-color)
   (above light-brown dark-salmon)
   (above light-brown dark-salmon)
   (above light-brown dark-salmon)
   (above light-brown dark-salmon)
   (sky-rectangle 2 dark-salmon-color)
   (sky-rectangle 20 salmon-color)
   (sky-rectangle 1 dark-salmon-color)
   (above light-brown dark-salmon)
   (above light-brown dark-salmon)
   (above mid-brown dark-salmon)
   (above mid-brown light-brown)
   (above mid-brown light-brown)
   (above dark-brown mid-brown)
   (sky-rectangle 1 dark-brown-color)))

(define row10-background
  (beside
   (above dark-salmon light-brown)
   (sky-rectangle 5 dark-salmon-color)
   (sky-rectangle 21 salmon-color)
   (sky-rectangle 4 dark-salmon-color)
   (sky-rectangle 2 light-brown-color)
   (above mid-brown light-brown)
   (above dark-brown mid-brown)))

(define row11-background
  (beside
   (sky-rectangle 1 light-brown-color)
   (sky-rectangle 6 dark-salmon-color)
   (sky-rectangle 20 salmon-color)
   (sky-rectangle 3 dark-salmon-color)
   (above dark-salmon light-brown)
   (sky-rectangle 3 light-brown-color)
   (sky-rectangle 1 mid-brown-color)))

(define row12-background
  (beside
   (sky-rectangle 28 salmon-color)
   (sky-rectangle 2 dark-salmon-color)
   (sky-rectangle 3 light-brown-color)
   (above light-brown mid-brown)
   (sky-rectangle 1 mid-brown-color)))


(define sky-reflection
  (flip-vertical
   (above row07-background row08-background row09-background row10-background
          row11-background row12-background row12-background)))

(define background
  (above row01-background row02-background row03-background row04-background row05-background
         row06-background row07-background row08-background row09-background row10-background row11-background
         row12-background row12-background sky-reflection))


;;; Definitions and procedures used for the buildings

;;; Note: general-rectangle is reused in this section

(define general-building1
  (lambda (size color)
    (above
     (rectangle (* 5/25 size) (* 5/110 size) 'solid color)
     (rectangle (* 35/110 size) size 'solid color))))

(define general-rectangular-building
  (lambda (size color)
    (rectangle (* 1/3 size) size 'solid color)))

(define narrow-rectangular-building
  (lambda (size color)
    (rectangle (* 1/4 size) size 'solid color)))

(define building1
  (above
   (general-rectangle 7 5 muddy-grey-building-color)
   (general-rectangle 15 5 muddy-grey-building-color)
   (general-rectangle 20 80 muddy-grey-building-color)))

(define building2
  (overlay/offset
   (above(general-rectangle 20 5 black-building-color)
         (general-rectangle 30 95 black-building-color)) -28 -2
                                                         (above/align "right" (general-rectangle 20 5 black-building-color)
                                                                      (general-rectangle 30 100 black-building-color))))

(define building3
  (general-rectangle 35 30 dark-grey-building-color))

(define building4
  (above
   (general-rectangle 25 5 black-building-color)
   (general-rectangle 35 110 black-building-color)))

(define building5
  (beside/align "bottom"
                (above
                 (general-rectangle 10 3 muddy-grey-building-color)
                 (general-rectangle 15 70 muddy-grey-building-color))
                (above
                 (general-rectangle 10 3 muddy-grey-building-color)
                 (general-rectangle 15 68 muddy-grey-building-color))))

(define building6
  (overlay/align "right" "center"
                 (narrow-rectangular-building 56 "dim grey")
                 (general-rectangular-building 56 black-building-color)))

(define triangle-top-building
  (overlay/offset (rotate 180 (triangle 15 'solid muddy-grey-building-color)) 0 32
                  (general-rectangular-building 60 muddy-grey-building-color)))

                                                  
;;; Definition of sections of the buildings (positioned buildings by parts- from left to right) and full skylines

(define section1-buildings
  (overlay/offset building3 40 -37
                  (overlay/offset
                   (general-rectangular-building 55 dark-brown-building-color) 25 -25
                   (beside/align "bottom"
                                 (general-rectangular-building 45 muddy-grey-building-color)
                                 building1 building2))))
(define section2-buildings
  (overlay/offset (general-rectangle 15 65 muddy-grey-building-color) 10 -5
                  (beside/align "bottom"
                                (general-rectangle 10 40 "Dim grey")
                                (overlay/offset
                                 (general-building1 70 "dimgrey") -15 -2 (general-building1 70 "dimgrey"))
                                (general-building1 55 black-building-color))))

(define section3-buildings
  (overlay/offset building6 -55 -3
                  (overlay/offset building6 -30 -3
                                  (overlay/offset (beside/align "bottom"
                                                                (narrow-rectangular-building 56 black-building-color)
                                                                (narrow-rectangular-building 62 black-building-color)
                                                                (general-rectangular-building 45 "dim grey"))
                                                  35 0 (beside/align "bottom"
                                                                     (narrow-rectangular-building 62 black-building-color)
                                                                     (narrow-rectangular-building 56 black-building-color))))))
(define section4-buildings
  (overlay/offset triangle-top-building -50 -12
                  (overlay/offset (general-building1 85 muddy-grey-building-color)
                                  50 -3 (overlay/offset (narrow-rectangular-building 60 muddy-grey-building-color)
                                                        10 -16 (overlay/offset (general-building1 85 black-building-color)
                                                                               23 -3 (general-building1 90 black-building-color))))))

(define section5-buildings
  (overlay/offset building3 -65 -35
                  (overlay/offset (beside/align "bottom"
                                                (narrow-rectangular-building 80 "dim grey")
                                                (above (general-rectangle 15 5 muddy-grey-building-color)
                                                       (general-building1 70 muddy-grey-building-color)))
                                  40 -10 (general-rectangular-building 100 black-building-color))))

(define section6-buildings
  (beside/align "bottom"
                (overlay/align "center" "bottom" (general-rectangular-building 45 "dim grey")
                               (overlay/offset (general-building1 115 black-building-color) -20 30
                                               (overlay/offset building3 5 -15
                                                               (narrow-rectangular-building 60 muddy-grey-building-color))))
                (overlay/offset (general-rectangular-building 30 muddy-grey-building-color) -5 -5
                                (general-rectangular-building 40 "dim grey"))
                (overlay/offset (general-rectangular-building 56 "dark grey") -5 -32
                                (general-building1 115 black-building-color))))

(define section7-buildings
  (overlay/offset
   (above (overlay/offset (square 10 'solid black-building-color)
                          23 0 (square 10 'solid black-building-color))
          (general-rectangular-building 100 black-building-color))
   -37 35 (overlay/offset building3
                          10 -5 (narrow-rectangular-building 40 dark-grey-building-color))))

(define skyline
  (beside/align "bottom"
                section1-buildings section2-buildings section3-buildings section4-buildings
                section5-buildings section6-buildings section7-buildings))



;;; Final definition of image

(define mumbai-skyline
  (overlay/offset
   (above (sea-reflection-rectangle 230)
          (sea-reflection-rectangle 200)
          (sea-reflection-rectangle 150)
          (sea-reflection-rectangle 100)
          (sea-reflection-rectangle 50))
   0 -75 (overlay/offset (above skyline (flip-vertical skyline)) 12 -60 background)))

; Uncomment line below to render image each time the program is run:
;mumbai-skyline






     
     
     


  





