;heatup
M116 P2 S10

G1 R2 Z0 ; Restore Z to the correct level for the active tool
M400 ;
G1 Y{move.axes[1].userPosition-50} ; Pull out from the tool

;Mesh on
G29 S1

;PCF fan on
M106 P4 R2