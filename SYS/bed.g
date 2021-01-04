; bed.g
; called to perform automatic bed compensation via G32
echo "you started fucking stupid bedleveling"
M561                         ; clear any existing bed transform
T-1
; If the printer hasn't been homed, home it
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
 G28
 echo "you're not home you dumbfuck!"
  
M558 H15 F480 T6000 S0.05 A1 ; Ensure that Dive Height is safe for Bed Tramming
G1 Z15
;Run initial 3 point leveling routine, X290.0:-32:627 Y658:185:186 leadscrews at rear middle, front left+right
M561 ; Clears bed leveling 
;Rear left
G1 X5 Y600 F9000
G30 P0 X5 Y600 Z-99999
;Rear Right
G1 X587 Y600 F9000
G30 P1 X587 Y600 Z-99999
;Front Left
G1 X300 Y10 F9000
G30 P2 X300 Y10 Z-99999 S3




;while true
;  if iterations = 5
;    abort "Too many auto calibration attempts"
;  if move.initialDeviation.deviation < 0.01 
;    if move.calibrationDeviation.deviation < move.initialDeviation.deviation + 0.005
;      if move.calibrationDeviation.deviation > move.initialDeviation.deviation - 0.005
;        break
;  echo "Repeating calibration because initial deviation (" ^ move.initialDeviation.deviation ^ "mm) must be < 0.01"
;  echo "and (" ^ move.calibrationDeviation.deviation ^ "mm) must be within 0.005 of initialDeviation"
;  echo "you're in the loop now you dumbfuck"


;Rear left
G1 X5 Y600 F9000
G30 P0 X5 Y600 Z-99999
;Rear Right
G1 X587 Y600 F9000
G30 P1 X587 Y600 Z-99999
;Front Left
G1 X300 Y10 F9000
G30 P2 X300 Y10 Z-99999 S3
M558 H4 F180

;echo "Auto calibration successful, deviation", move.calibrationDeviation.deviation ^ "mm"
;echo "Auto calibration successful, initialDeviation", move.initialDeviation.deviation ^ "mm"  
:G29
G1 X300 Y300
G30

