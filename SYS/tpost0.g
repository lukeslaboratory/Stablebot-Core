; tpost0.g
; called after tool 0 has been selected

;heatup
M116 P0 S10

;prime nozzle
;M98 P"/sys/Purge.g"

;Wipe
;M98 P"/sys/Wipe.g"
;M83 ; Extruder to relative
;G1 E-3.5 ; retract before last one
;M82 ; extrude to absolute
;M98 P"/sys/Wipe.g"

;Mesh on
G29 S1

;Move out of wipe area
G1 Y575

;PCF fan on
M106 P0 R2
