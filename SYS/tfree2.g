; tfree2.g
; called when tool 2 is freed

;Drop the bed
G91
G1 Z10 F1000
G90

;mesh levelling off
;G29 S2

;Move In
G53 G1 X452.4 Y575 Z{move.axes[2].userPosition+10} F36000    ;Old was X560, Far Right
G53 G1 Y617 F36000
G53 G1 Y630 F600
G53 G1 Y644.1 F3600
;Open Coupler
M98 P"/macros/Coupler - Unlock"

;Move Out
G53 G1 Y575 F36000


;fan off
M106 F4 S0
