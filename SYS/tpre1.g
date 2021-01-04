; tpre1.g
; called before tool 1 is selected

;Unlock Coupler
M98 P"/macros/Coupler - Unlock"

;Move to location
G53 G1 X141 Y623 F36000

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

;Move Out to purge location
G1 Y620 F4000
