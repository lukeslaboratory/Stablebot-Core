; tfree0.g
; called when tool 0 is freed

;Drop the bed
G91
G1 Z19 F1000
G90

;mesh levelling off
;G29 S2

;Move In
G53 G1 X38 Y560 F36000
G53 G1 Y590 F36000
G53 G1 Y595 F600
G53 G1 Y637 F3600
;Open Coupler
M98 P"/macros/Coupler - Unlock"

;Move Out
G53 G1 Y605 F36000

;fan off
M106 P1 S0

;Move Out
G53 G1 Y575 F36000
