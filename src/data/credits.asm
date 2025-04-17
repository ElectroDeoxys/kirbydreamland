PUSHC
NEWCHARMAP credits

	charmap "A", $e0
	charmap "B", $e1
	charmap "C", $e2
	charmap "D", $e3
	charmap "E", $e4
	charmap "F", $e5
	charmap "G", $e6
	charmap "H", $e7
	charmap "I", $e8
	charmap "J", $e9
	charmap "K", $ea
	charmap "L", $eb
	charmap "M", $ec
	charmap "N", $ed
	charmap "O", $ee
	charmap "P", $ef
	charmap "Q", $f0
	charmap "R", $f1
	charmap "S", $f2
	charmap "T", $f3
	charmap "U", $f4
	charmap "V", $f5
	charmap "W", $f6
	charmap "X", $f7
	charmap "Y", $f8
	charmap "Z", $f9

	charmap "'", $fa
	charmap ".", $fb
	charmap ",", $fc
	charmap " ", $ff

CreditsText:
	db " DIRECTOR           "
	db "  CHIEF DESIGNER    "
	db "      MASA SAKURAI  "
	db "                    "
	db " CHIEF PROGRAMMER   "
	db "                    "
	db "     KYOUHEI MIYABI "
	db "                    "
	db " PROGRAMMER         "
	db "                    "
	db "       SUNDAY RAIN  "
	db "                    "
	db " GDV PROGRAMMER     "
	db "                    "
	db "       MAMMY PRECO  "
	db "                    "
	db " GDV PROGRAMMER     "
	db "                    "
	db "     TETSUYA NOTOYA "
	db "                    "
	db " DESIGNER           "
	db "                    "
	db "      MOGAMI KURAND "
	db "                    "
	db " SOUND COMPOSER     "
	db "                    "
	db "      JUN ISHIKAWA  "
	db "                    "
	db " SPECIAL THANKS     "
	db "                    "
	db "          BUBBY     "
	db "                    "
	db " SPECIAL THANKS     "
	db "                    "
	db "         CIPHER     "
	db "                    "
	db " SUPERVISOR         "
	db "                    "
	db "      BOU NAKAJIMA  "
	db "                    "
	db " PRODUCER           "
	db "                    "
	db "      MAKOTO KANAI  "
	db "                    "
	db " AND                "
	db "                    "
	db "   SO MANY PLAYERS. "
	db "                    "
IF DEF(_KDL_JP) || DEF(_KDL_JP11)
	db " PRESENTED BY       "
	db "                    "
	db " HAL LABORATORY,INC."
	db "                    "
	db " LICENSED TO        "
	db "                    "
	db "          NINTENDO  "
ELSE
	db " KIRBY'S DREAM LAND "
	db "                    "
	db " PRESENTED BY...    "
	db "                    "
	db " HAL LABORATORY,INC."
	db "                    "
	db "    AND NINTENDO    "
ENDC
	db "                    "
	db " THANK YOU FOR      "
	db "                    "
	db "           PLAYING. "
	db "                    "

POPC
