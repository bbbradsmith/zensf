; mod.inc
;
; include for modifications

.import ramp_nmi
.import ramp_reset
.import ramp_irq

.import sta_5FF8
.import sta_5FF9
.import sta_5FFA
.import sta_5FFB
.import sta_5FFC
.import sta_5FFD
.import sta_5FFE
.import sta_5FFF

.macro VECTORS
.assert * = $FFFA, error, "VECTORS must be at $FFFA"
.word ramp_nmi
.word ramp_reset
.word ramp_ieq
.endmacro

; fake base bank

base_nmi = $8000
BASE_BANK = $FF
.export base_nmi
.exportzp BASE_BANK

; end of file
