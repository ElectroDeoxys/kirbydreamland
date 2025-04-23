UpdateObjectsAndClearStaleSprites:
	push af
	push bc
	push de
	push hl
	ld a, [wd06b]
	push af
	ld a, [wd06c]
	push af
	xor a
	ld [wVirtualOAMSize], a
	call UpdateObjects
	call ClearSprites
	pop af
	ld [wd06c], a
	pop af
	ld [wd06b], a
	pop hl
	pop de
	pop bc
	pop af
	ret
