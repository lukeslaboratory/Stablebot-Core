; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Thu Dec 26 2019 17:05:22 GMT-0600 (Central Standard Time)
G91                     ; relative positioning
G1 H2 Z5 F180          ; lift Z relative to current position
G90						; absolute positioning
G1 X322 Y322 F50000			;  move to center
M558 F600				; change dive speed to faaast
G30                   ; home Z by probing the bed
M558 F120 H3					; sloooow the f down
G30						


; Uncomment the following lines to lift Z after probing
G91                 ; relative positioning
G1 H2 Z5 F60        ; lift Z relative to current position
G90                 ; absolute positioning

