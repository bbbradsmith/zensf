; mod.inc
;
; include for modifications

; exports for mod.cfg to know where ramp.s resides
.include "out_info/build.inc"
.export RAM_LOW

; dummy exports for ramp.s
base_nmi = $8000
base_banks = $8000
BASE_BANK = $FF
.export base_nmi
.export base_banks
.exportzp BASE_BANK

; bankswitch replacements (from ramp.s)

.import sta_5FF8
.import sta_5FF9
.import sta_5FFA
.import sta_5FFB
.import sta_5FFC
.import sta_5FFD
.import sta_5FFE
.import sta_5FFF

; vectors (from ramp.s)

.import ramp_nmi
.import ramp_reset
.import ramp_irq

.macro VECTORS
.assert * = $FFFA, error, "VECTORS must be at $FFFA"
.word ramp_nmi
.word ramp_reset
.word ramp_irq
.endmacro

; end of file
