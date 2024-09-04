MACRO queued_bg_struct
\1BGPtr::  dw
\1TileID:: db
ENDM

MACRO channel1_struct
\1Sweep::    db
\1Length::   db
\1Envelope:: db
\1FreqLo::   db
\1FreqHi::   db
	ds $1
ENDM

MACRO channel2_struct
\1Length::   db
\1Envelope:: db
\1FreqLo::   db
\1FreqHi::   db
ENDM

MACRO channel3_struct
\1Enabled:: db
\1Length::  db
\1Level::   db
\1FreqLo::  db
\1FreqHi::  db
	ds $1
ENDM

MACRO channel4_struct
\1Length::    db
\1Envelope::  db
\1Frequency:: db
\1Control::   db
ENDM
