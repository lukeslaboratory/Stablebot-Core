; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Thu Dec 26 2019 17:05:22 GMT-0600 (Central Standard Time)
T-1 ;
G91                     ; relative positioning
G1 H2 Z5 F600          ; lift Z relative to current position
G90
M400
M98 P"homey.g"
M400
M98 P"homex.g"
M98 P"homez.g"			; this will leave it 5mm above the bed
M98 P"homec.g"