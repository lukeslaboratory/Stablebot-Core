; tpost1.g
; called after tool 1 has been selected

;heatup
M116 P1 S10

;prime nozzle
;M98 P"/sys/Purge.g"

;Wipe
;M98 P"/sys/Wipe.g"
;M83 ; Extruder to relative
;G1 E-2 ; retract before last one
;M82 ; extrude to absolute
;Last wipe
;M98 P"/sys/Wipe.g"

;Mesh on
G29 S1

;Move out of wipe area
G1 Y575

;PCF fan on
M106 P2 R2

M116 P1 S2