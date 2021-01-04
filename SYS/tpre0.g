; tpre0.g
; called before tool 0 is selected

;Unlock Coupler
M98 P"/macros/Coupler - Unlock"

;Move to location
G53 G1 X38 Y623 F36000

;Move in
G1 Y633 F36000

;Collect
G1 Y637 F2500

;Close Coupler
M98 P"/macros/Coupler - Lock"

;WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!
;if you are using non-standard length hotends ensure the bed is lowered enough BEFORE undocking the tool!
G91
G1 Z19 F1000
G90

;Move to Prime Location
G1 Y622 F4000

