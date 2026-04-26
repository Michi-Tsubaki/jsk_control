#!/usr/bin/env roseus
(ros::roseus "jsk_generic_g1_spacenav_teleop")
(require "package://g1eus/euslisp/g1-interface.l")
(require "package://jsk_generic_teleop/euslisp/jsk-generic-teleop.l")

(g1-init)

(jsk-generic-teleop
 :robot *g1*
 :arms '(:larm :rarm)
 :device-type :spacenav
 :init-pose nil
 :origin-offsets nil
 :active-arm :rarm
 :ratio 0.5
 :relative-translation-scale 30.0
 :relative-rotation-scale (/ pi 24.0)
 :relative-deadzone 0.2
 :spacenav-topic "/spacenav/joy"
 :send-time 200
 :rate 30
 :debug-view t)
