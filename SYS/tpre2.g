; tpre2.g
; called before tool 2 is selected - NO TOOL OFFSET APPLIED.

;Move to location
G53 G1 X452.4 Y573 F36000     ; old T2 was at 560
G60 S0               		; Save this position as the reference point from which to later apply new tool offsets.
;Move in
G1 Y630 F36000

;Collect
G1 Y644.1 F2500

;Close Coupler
M98 P"/macros/Coupler - Lock"



