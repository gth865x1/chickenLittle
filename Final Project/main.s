	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	initializeGameBGs
	.type	initializeGameBGs, %function
initializeGameBGs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #23296
	mov	r3, #67108864
	add	r1, r1, #130
	mov	r2, #23808
	stmfd	sp!, {r4, r5, r6, lr}
	add	r2, r2, #133
	strh	r1, [r3, #8]	@ movhi
	mov	r1, #4864	@ movhi
	ldr	r6, .L2
	strh	r1, [r3, #0]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r0, .L2+4
	mov	lr, pc
	bx	r6
	ldr	r4, .L2+8
	mov	r5, #100663296
	mov	r0, #3
	ldr	r1, .L2+12
	mov	r2, #100663296
	mov	r3, #1664
	mov	lr, pc
	bx	r4
	add	r2, r5, #55296
	ldr	r1, .L2+16
	mov	r3, #2048
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L2+20
	mov	lr, pc
	bx	r6
	add	r2, r5, #16384
	mov	r0, #3
	ldr	r1, .L2+24
	mov	r3, #800
	mov	lr, pc
	bx	r4
	add	r2, r5, #59392
	mov	r0, #3
	ldr	r1, .L2+28
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L2+32
	add	r2, r2, #512
	mov	r3, #256
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L2+36
	add	r2, r5, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	loadPalette
	.word	BGgrassSky2Pal
	.word	DMANow
	.word	BGgrassSky2Tiles
	.word	BGgrassSky2Map
	.word	BGcloudsPal
	.word	BGcloudsTiles
	.word	BGcloudsMap
	.word	spritesheetPal
	.word	spritesheetTiles
	.size	initializeGameBGs, .-initializeGameBGs
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	mov	fp, #384
	sub	sp, sp, #24
	add	fp, fp, #2
	str	fp, [sp, #0]
	mov	fp, #348
	add	fp, fp, #3
	mov	r9, #1
	str	fp, [sp, #4]
	mov	fp, #608
	add	fp, fp, r9
	str	fp, [sp, #8]
	mov	fp, #440
	add	fp, fp, #3
	str	fp, [sp, #12]
	mov	fp, #860
	add	fp, fp, #2
	str	fp, [sp, #16]
	mov	fp, #804
	ldr	ip, .L5
	add	fp, fp, #3
	str	fp, [sp, #20]
	mov	fp, #117
	mov	r3, #0
	mov	r2, #16
	ldr	r0, .L5+4
	str	fp, [ip, #0]
	mov	fp, #17
	str	fp, [ip, #4]
	str	r3, [ip, #32]
	str	r3, [ip, #44]
	str	r3, [ip, #36]
	ldr	fp, [sp, #0]
	str	r2, [ip, #24]
	str	r2, [ip, #28]
	str	r9, [ip, #8]
	str	r9, [ip, #12]
	mov	ip, #64
	mov	r1, #32
	ldr	sl, .L5+8
	str	ip, [r0, #24]
	mov	ip, #216
	str	r1, [r0, #28]
	str	ip, [r0, #16]
	str	fp, [r0, #20]
	str	r3, [r0, #32]
	str	r3, [r0, #44]
	str	r3, [r0, #36]
	str	r9, [r0, #8]
	str	r9, [r0, #12]
	mov	r0, #34
	ldr	r8, .L5+12
	str	r0, [sl, #16]
	mov	r0, #396
	str	r0, [sl, #20]
	mov	r0, #186
	ldr	r7, .L5+16
	str	r1, [sl, #24]
	str	r1, [sl, #28]
	str	r1, [r8, #24]
	str	r1, [r8, #28]
	str	r9, [sl, #8]
	str	r9, [sl, #12]
	str	r3, [r8, #8]
	str	r0, [r8, #16]
	mov	r0, #54
	ldr	r6, .L5+20
	str	r0, [r8, #20]
	mov	r0, #66
	str	r0, [r7, #16]
	mov	r0, #206
	str	r0, [r6, #16]
	ldr	r0, [sp, #8]
	ldr	r5, .L5+24
	ldr	r4, .L5+28
	ldr	ip, [sp, #4]
	str	r0, [r6, #20]
	mov	r0, #232
	ldr	fp, [sp, #12]
	str	r3, [r8, #12]
	str	r3, [r7, #8]
	str	r3, [r7, #12]
	str	r3, [r6, #8]
	str	r3, [r6, #12]
	str	r3, [r5, #8]
	str	r3, [r5, #12]
	str	r0, [r5, #16]
	str	r3, [r4, #8]
	ldr	r0, .L5+32
	str	r3, [r4, #12]
	mov	r3, #492
	str	ip, [r7, #20]
	str	r3, [r4, #20]
	mov	ip, #158
	mov	r3, #152
	str	ip, [r0, #16]
	str	r1, [r7, #24]
	str	r1, [r7, #28]
	str	r1, [r6, #24]
	str	r1, [r6, #28]
	str	fp, [r5, #20]
	str	ip, [r4, #16]
	str	r2, [r0, #24]
	str	r2, [r0, #28]
	str	r2, [r5, #24]
	str	r2, [r5, #28]
	str	r2, [r4, #24]
	str	r2, [r4, #28]
	str	r3, [r0, #20]
	ldr	r3, .L5+36
	ldr	ip, .L5+40
	ldr	fp, .L5+36
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	mov	r3, #108
	str	r3, [fp, #16]
	str	r1, [ip, #24]
	mov	r3, #772
	ldr	r1, [sp, #16]
	str	r3, [fp, #20]
	mov	r0, #216
	ldr	r3, .L5+44
	str	r1, [ip, #20]
	str	r0, [ip, #16]
	str	r2, [ip, #28]
	mov	fp, #158
	ldr	ip, .L5+44
	ldr	r0, .L5+48
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	fp, [r3, #16]
	ldr	r1, [sp, #20]
	mov	r3, #892
	str	r3, [ip, #20]
	mov	r3, #93
	str	r2, [r0, #24]
	str	r2, [r0, #28]
	str	r3, [r0, #16]
	str	r1, [r0, #20]
	add	sp, sp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L6:
	.align	2
.L5:
	.word	chicken
	.word	foxy
	.word	king
	.word	proof1
	.word	proof2
	.word	proof3
	.word	proof4
	.word	proof5
	.word	proof6
	.word	proof7
	.word	proof8
	.word	proof9
	.word	proof10
	.size	initialize, .-initialize
	.align	2
	.global	initializeGame
	.type	initializeGame, %function
initializeGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L11
	stmfd	sp!, {r3, lr}
	mov	r3, #0
.L8:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L8
	bl	initialize
	ldr	r3, .L11+4
	mov	r0, #40
	str	r0, [r3, #0]
	mov	r2, #0
	mov	r0, #75
	str	r0, [r3, #8]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	ldr	r3, .L11+8
	mov	r0, #4000
	str	r0, [r3, #0]
	mov	r1, #99328
	ldr	r3, .L11+12
	add	r1, r1, #672
	str	r1, [r3, #0]
	ldr	r3, .L11+16
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	shadowOAM
	.word	.LANCHOR0
	.word	timer
	.word	tempTimer
	.word	collectedItems
	.size	initializeGame, .-initializeGame
	.align	2
	.global	hideSprites
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L16
	mov	r3, #0
.L14:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L14
	bx	lr
.L17:
	.align	2
.L16:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.align	2
	.global	updateOAM
	.type	updateOAM, %function
updateOAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L19
	sub	sp, sp, #52
	ldr	r1, .L19+4
	ldr	r2, [r4, #4]
	ldr	r0, .L19+8
	add	r5, r1, #40
	ldmia	r5, {r5, sl}	@ phole ldm
	mov	r2, r2, asl #23
	str	r2, [sp, #12]
	ldr	r2, [r0, #4]
	add	r5, r5, sl, asl #5
	ldr	sl, [sp, #12]
	mov	r2, r2, asl #23
	str	r2, [sp, #16]
	mov	sl, sl, lsr #23
	str	sl, [sp, #4]
	ldr	ip, .L19+12
	ldr	sl, [sp, #16]
	ldr	lr, .L19+16
	ldr	r3, [ip, #4]
	mvn	sl, sl, lsr #6
	ldrb	ip, [ip, #0]	@ zero_extendqisi2
	ldr	r7, [r1, #4]
	str	sl, [sp, #40]
	ldrb	sl, [lr, #0]	@ zero_extendqisi2
	str	ip, [sp, #20]
	ldr	r8, .L19+20
	ldr	r6, .L19+24
	mov	r5, r5, asl #1
	str	sl, [sp, #44]
	str	r5, [sp, #16]
	ldr	sl, [sp, #4]
	ldr	r5, [sp, #20]
	mov	r7, r7, asl #23
	ldr	fp, [r8, #4]
	ldr	r9, [r6, #4]
	ldrb	r1, [r1, #0]	@ zero_extendqisi2
	ldrb	r8, [r8, #0]	@ zero_extendqisi2
	ldrb	r6, [r6, #0]	@ zero_extendqisi2
	ldrb	r4, [r4, #0]	@ zero_extendqisi2
	ldrb	r0, [r0, #0]	@ zero_extendqisi2
	mov	r7, r7, lsr #23
	orr	r7, r7, #16384
	orr	r5, r5, #16384
	orr	sl, sl, #16384
	ldr	ip, .L19+28
	str	r1, [sp, #8]
	str	r8, [sp, #28]
	str	r6, [sp, #24]
	str	r4, [sp, #32]
	str	r0, [sp, #36]
	str	r7, [sp, #12]
	str	r5, [sp, #20]
	str	sl, [sp, #4]
	ldr	sl, [sp, #8]
	strh	sl, [ip, #0]	@ movhi
	ldr	sl, [sp, #12]
	strh	sl, [ip, #2]	@ movhi
	ldr	sl, [sp, #16]
	mov	r3, r3, asl #23
	strh	sl, [ip, #4]	@ movhi
	mov	r3, r3, lsr #23
	ldr	sl, [sp, #20]
	orr	r3, r3, #-16777216
	strh	sl, [ip, #8]	@ movhi
	orr	r3, r3, #16711680
	ldr	sl, [sp, #28]
	ldr	r5, [sp, #40]
	orr	r3, r3, #53248
	mov	r9, r9, asl #23
	strh	r3, [ip, #10]	@ movhi
	strh	sl, [ip, #16]	@ movhi
	mov	r3, #8640	@ movhi
	ldr	sl, [sp, #24]
	mvn	r9, r9, lsr #6
	mov	r2, #13120
	strh	r3, [ip, #12]	@ movhi
	mvn	r9, r9, lsr #17
	mvn	r5, r5, lsr #17
	mov	r3, #4288	@ movhi
	str	r5, [sp, #40]
	add	r7, r2, #8
	add	r5, r2, #10
	strh	r3, [ip, #20]	@ movhi
	strh	sl, [ip, #24]	@ movhi
	ldr	r3, [sp, #4]
	ldr	sl, [sp, #36]
	strh	r9, [ip, #26]	@ movhi
	strh	r2, [ip, #28]	@ movhi
	ldr	r9, [lr, #4]
	ldr	r2, [sp, #32]
	ldr	lr, .L19+32
	mov	fp, fp, asl #23
	strh	r2, [ip, #32]	@ movhi
	strh	r3, [ip, #34]	@ movhi
	add	r2, sp, #40
	ldmia	r2, {r2, r3}	@ phole ldm
	strh	sl, [ip, #40]	@ movhi
	ldr	r8, .L19+36
	ldr	sl, [lr, #4]
	ldr	r6, .L19+40
	ldr	r4, .L19+44
	ldr	r0, .L19+48
	ldr	r1, .L19+52
	ldrb	lr, [lr, #0]	@ zero_extendqisi2
	mvn	fp, fp, lsr #6
	mov	r9, r9, asl #23
	mvn	fp, fp, lsr #17
	mov	r9, r9, lsr #23
	strh	fp, [ip, #18]	@ movhi
	strh	r7, [ip, #36]	@ movhi
	strh	r2, [ip, #42]	@ movhi
	strh	r5, [ip, #44]	@ movhi
	strh	r3, [ip, #48]	@ movhi
	ldr	r2, [r8, #4]
	ldr	r7, [r6, #4]
	ldr	r5, [r4, #4]
	ldr	fp, [r0, #4]
	ldr	r3, [r1, #4]
	orr	r9, r9, #16384
	str	lr, [sp, #24]
	ldrb	r4, [r4, #0]	@ zero_extendqisi2
	str	r9, [sp, #8]
	str	r4, [sp, #28]
	ldr	r4, [sp, #8]
	ldrb	r8, [r8, #0]	@ zero_extendqisi2
	strh	r4, [ip, #50]	@ movhi
	mov	r2, r2, asl #23
	mov	r4, #17152
	str	r8, [sp, #12]
	add	r4, r4, #196
	mov	r2, r2, lsr #23
	strh	r4, [ip, #52]	@ movhi
	orr	r2, r2, #16384
	ldr	r4, [sp, #12]
	str	r2, [sp, #16]
	ldrb	r6, [r6, #0]	@ zero_extendqisi2
	strh	r4, [ip, #56]	@ movhi
	ldr	r4, [sp, #16]
	str	r6, [sp, #20]
	ldrb	r0, [r0, #0]	@ zero_extendqisi2
	strh	r4, [ip, #58]	@ movhi
	mov	r5, r5, asl #23
	mov	r4, #13248	@ movhi
	mov	sl, sl, asl #23
	strh	r4, [ip, #60]	@ movhi
	mov	r5, r5, lsr #23
	ldr	r4, [sp, #20]
	mvn	sl, sl, lsr #6
	ldr	r2, [sp, #24]
	str	r0, [sp, #32]
	orr	r5, r5, #16384
	mvn	sl, sl, lsr #17
	mov	r7, r7, asl #23
	mov	r3, r3, asl #23
	mov	lr, #17152
	ldrb	r1, [r1, #0]	@ zero_extendqisi2
	strh	r4, [ip, #64]	@ movhi
	strh	r5, [ip, #74]	@ movhi
	ldr	r4, [sp, #28]
	strh	sl, [ip, #82]	@ movhi
	mov	r7, r7, lsr #23
	ldr	sl, [sp, #32]
	mov	r3, r3, lsr #23
	mov	r5, #17152
	add	r6, lr, #198
	orr	r8, r2, #16384
	add	r9, lr, #204
	orr	r7, r7, #16384
	orr	r3, r3, #16384
	add	r5, r5, #202
	mov	fp, fp, asl #23
	str	r1, [sp, #36]
	str	r3, [sp, #24]
	strh	r7, [ip, #66]	@ movhi
	strh	r6, [ip, #68]	@ movhi
	strh	r4, [ip, #72]	@ movhi
	strh	r5, [ip, #76]	@ movhi
	strh	r8, [ip, #80]	@ movhi
	strh	r9, [ip, #84]	@ movhi
	mov	fp, fp, lsr #23
	strh	sl, [ip, #88]	@ movhi
	mov	r4, #13248
	ldr	r5, [sp, #36]
	ldr	sl, [sp, #24]
	orr	fp, fp, #16384
	add	lr, lr, #200
	add	r4, r4, #11
	mov	r1, ip
	strh	fp, [ip, #90]	@ movhi
	strh	r4, [ip, #92]	@ movhi
	strh	r5, [ip, #96]	@ movhi
	strh	sl, [ip, #98]	@ movhi
	strh	lr, [ip, #100]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L19+56
	mov	lr, pc
	bx	ip
	add	sp, sp, #52
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	proof2
	.word	chicken
	.word	proof3
	.word	foxy
	.word	proof4
	.word	king
	.word	proof1
	.word	shadowOAM
	.word	proof8
	.word	proof5
	.word	proof6
	.word	proof7
	.word	proof9
	.word	proof10
	.word	DMANow
	.size	updateOAM, .-updateOAM
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #1264
	mov	r3, #67108864
	sub	r2, r2, #1
	mov	r1, #128	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	mov	r2, #0	@ movhi
	strh	r2, [r3, #128]	@ movhi
	bx	lr
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	ip, [r3, #0]
	mov	r6, #0
	add	ip, ip, #12
	str	r6, [ip, #8]
	ldr	ip, .L23+4
	mov	sl, r0
	mov	r7, #67108864
	mov	r5, r2
	mov	r4, r1
	add	r2, r7, #160
	mov	r3, #910163968
	add	r7, r7, #256
	str	r6, [ip, #0]
	mov	r0, #1
	ldr	ip, .L23+8
	mov	r1, sl
	mov	lr, pc
	bx	ip
	ldr	r8, .L23+12
	mov	r1, r5
	strh	r6, [r7, #2]	@ movhi
	mov	r0, #16777216
	mov	lr, pc
	bx	r8
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	r6, .L23+16
	mov	r3, r3, lsr #16
	strh	r3, [r7, #0]	@ movhi
	mov	r9, #1
	mov	r3, #128	@ movhi
	rsb	r0, r4, r4, asl #4
	mov	r1, r5
	str	sl, [r6, #0]
	mov	r0, r0, asl #2
	strh	r3, [r7, #2]	@ movhi
	stmib	r6, {r4, r5, r9}	@ phole stm
	mov	lr, pc
	bx	r8
	mov	r1, r5
	sub	r5, r0, #1
	mov	r0, r4
	mov	lr, pc
	bx	r8
	sub	r0, r0, r0, asl #2
	add	r5, r5, r0
	str	r5, [r6, #20]
	str	r9, [r6, #24]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	dma
	.word	vbCountA
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.size	playSoundA, .-playSoundA
	.align	2
	.global	initializeGameMusic
	.type	initializeGameMusic, %function
initializeGameMusic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #667648
	ldr	r3, .L26
	add	r1, r1, #3200
	mov	r2, #11008
	ldr	r0, .L26+4
	mov	ip, #1
	add	r1, r1, #13
	add	r2, r2, #17
	str	ip, [r3, #16]
	b	playSoundA
.L27:
	.align	2
.L26:
	.word	soundA
	.word	chickendance4
	.size	initializeGameMusic, .-initializeGameMusic
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r5, .L33
	mov	lr, pc
	bx	r5
	ldr	r0, .L33+4
	ldr	r3, .L33+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L33+12
	ldr	r0, .L33+16
	ldr	r3, .L33+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+24
	mov	lr, pc
	bx	r3
	ldr	r6, .L33+28
	mov	lr, pc
	bx	r5
	ldr	sl, .L33+32
	ldr	r2, [r4, #0]
	ldr	r8, .L33+36
	mov	r5, #67108864
.L29:
	ldr	r3, [r5, #304]
	tst	r2, #8
	str	r2, [r6, #0]
	str	r3, [r4, #0]
	beq	.L30
	tst	r3, #8
	beq	.L32
.L30:
	tst	r2, #1
	beq	.L31
	ands	r7, r3, #1
	bne	.L31
	mov	r0, #251
	mov	lr, pc
	bx	sl
	str	r7, [r8, #16]
	ldr	r3, [r4, #0]
.L31:
	mov	r2, r3
	b	.L29
.L32:
	mov	r0, #251
	mov	lr, pc
	bx	sl
	mov	r3, #2
	str	r3, [r8, #16]
	bl	initializeGameBGs
	bl	initializeGame
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	initializeGameMusic
.L34:
	.align	2
.L33:
	.word	flipPage
	.word	instructScreenPal
	.word	loadPalette
	.word	buttons
	.word	instructScreenBitmap
	.word	drawBackgroundImage4
	.word	waitForVblank
	.word	oldButtons
	.word	fillScreen4
	.word	.LANCHOR0
	.size	instructions, .-instructions
	.align	2
	.global	splash
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L40
	mov	lr, pc
	bx	r4
	ldr	r0, .L40+4
	ldr	r3, .L40+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L40+12
	ldr	r3, .L40+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+20
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r1, .L40+24
	ldr	ip, .L40+28
	ldr	r3, [r1, #0]
	mov	r0, #67108864
.L36:
	ldr	r2, [r0, #304]
	tst	r3, #8
	str	r3, [ip, #0]
	str	r2, [r1, #0]
	beq	.L37
	tst	r2, #8
	beq	.L39
.L37:
	tst	r3, #1
	beq	.L38
	tst	r2, #1
	bne	.L38
	ldr	r3, .L40+32
	mov	r0, #251
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+36
	mov	r2, #1
	str	r2, [r3, #16]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L38:
	mov	r3, r2
	b	.L36
.L39:
	mov	r0, #251
	ldr	r3, .L40+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+36
	mov	r2, #2
	str	r2, [r3, #16]
	bl	initializeGameBGs
	bl	initializeGame
	ldmfd	sp!, {r4, lr}
	b	initializeGameMusic
.L41:
	.align	2
.L40:
	.word	flipPage
	.word	startScreenPal
	.word	loadPalette
	.word	startScreenBitmap
	.word	drawBackgroundImage4
	.word	waitForVblank
	.word	buttons
	.word	oldButtons
	.word	fillScreen4
	.word	.LANCHOR0
	.size	splash, .-splash
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	ldr	r3, .L43
	ldr	ip, [r3, #0]
	mov	r6, #0
	add	ip, ip, #24
	str	r6, [ip, #8]
	ldr	ip, .L43+4
	mov	sl, r0
	mov	r7, #67108864
	mov	r5, r2
	mov	r4, r1
	add	r2, r7, #164
	mov	r3, #910163968
	add	r7, r7, #256
	str	r6, [ip, #0]
	mov	r0, #2
	ldr	ip, .L43+8
	mov	r1, sl
	mov	lr, pc
	bx	ip
	ldr	r8, .L43+12
	mov	r1, r5
	strh	r6, [r7, #6]	@ movhi
	mov	r0, #16777216
	mov	lr, pc
	bx	r8
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	r6, .L43+16
	mov	r3, r3, lsr #16
	strh	r3, [r7, #4]	@ movhi
	mov	r3, #128	@ movhi
	str	sl, [r6, #0]
	rsb	r0, r4, r4, asl #4
	strh	r3, [r7, #6]	@ movhi
	mov	r3, #1
	mov	r1, r5
	str	r3, [r6, #12]
	str	r5, [r6, #8]
	mov	r0, r0, asl #2
	str	r4, [r6, #4]
	mov	lr, pc
	bx	r8
	mov	r1, r5
	sub	r5, r0, #1
	mov	r0, r4
	mov	lr, pc
	bx	r8
	sub	r0, r0, r0, asl #2
	add	r5, r5, r0
	mov	r3, #2
	str	r5, [r6, #20]
	str	r3, [r6, #24]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	dma
	.word	vbCountB
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	add	r3, r3, #512
	stmfd	sp!, {r4, r5, r6, lr}
	ldrh	r2, [r3, #2]
	tst	r2, #1
	mov	r2, #0	@ movhi
	strh	r2, [r3, #8]	@ movhi
	beq	.L46
	ldr	r4, .L56
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L47
	ldr	r5, .L56+4
	ldr	r3, [r5, #0]
	ldr	r2, [r4, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #0]
	ble	.L48
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L53
.L48:
	ldr	r2, [r4, #20]
	ldr	r3, [r5, #0]
	cmp	r2, r3
	bge	.L47
	ldr	r3, .L56+8
	ldr	r1, [r3, #0]
	mov	r2, #67108864
	mov	r3, #0
	add	r2, r2, #256
	add	r1, r1, #12
	str	r3, [r1, #8]
	strh	r3, [r2, #2]	@ movhi
	ldr	r2, .L56
	str	r3, [r2, #12]
.L47:
	ldr	r4, .L56+12
	ldr	r3, [r4, #12]
	cmp	r3, #0
	ldrne	r5, .L56+16
	ldreq	r5, .L56+16
	ldrne	r2, [r5, #0]
	ldreq	r2, [r5, #0]
	ldr	r1, [r4, #20]
	addne	r2, r2, #1
	strne	r2, [r5, #0]
	cmp	r2, r1
	ldr	r6, .L56+12
	bgt	.L54
.L51:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #2]	@ movhi
.L46:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L54:
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L55
.L52:
	ldr	r3, .L56+8
	ldr	r1, [r3, #0]
	mov	r2, #67108864
	mov	r3, #0
	add	r1, r1, #24
	add	r2, r2, #256
	str	r3, [r1, #8]
	strh	r3, [r2, #6]	@ movhi
	str	r3, [r4, #12]
	b	.L51
.L53:
	ldmia	r4, {r0, r1, r2}	@ phole ldm
	bl	playSoundA
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L48
	b	.L47
.L55:
	ldmia	r6, {r0, r1, r2}	@ phole ldm
	bl	playSoundB
	ldr	r2, [r6, #20]
	ldr	r3, [r5, #0]
	cmp	r2, r3
	bge	.L51
	ldr	r3, [r6, #12]
	cmp	r3, #0
	bne	.L52
	b	.L51
.L57:
	.align	2
.L56:
	.word	soundA
	.word	vbCountA
	.word	dma
	.word	soundB
	.word	vbCountB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	ldr	r1, .L59
	mov	r3, #0
	add	r2, r2, #256
	strh	r3, [r2, #2]	@ movhi
	str	r3, [r1, #12]
	strh	r3, [r2, #6]	@ movhi
	ldr	r2, .L59+4
	str	r3, [r2, #12]
	bx	lr
.L60:
	.align	2
.L59:
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	add	r3, r3, #256
	mov	r1, #128
	strh	r1, [r3, #2]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	ldr	r3, .L62
	mov	r2, #1
	str	r2, [r3, #12]
	ldr	r3, .L62+4
	str	r2, [r3, #12]
	bx	lr
.L63:
	.align	2
.L62:
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L65
	ldr	r1, [r3, #0]
	mov	r3, #0
	add	r0, r1, #12
	str	r3, [r0, #8]
	mov	r2, #67108864
	ldr	r0, .L65+4
	add	r2, r2, #256
	add	r1, r1, #24
	strh	r3, [r2, #2]	@ movhi
	str	r3, [r0, #12]
	str	r3, [r1, #8]
	strh	r3, [r2, #6]	@ movhi
	ldr	r2, .L65+8
	str	r3, [r2, #12]
	bx	lr
.L66:
	.align	2
.L65:
	.word	dma
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L145
	ldr	r5, .L145+4
	ldr	r6, .L145+8
	ldr	r8, .L145+12
	ldr	r7, .L145+16
	sub	sp, sp, #124
.L123:
	ldr	r0, [r4, #0]
	str	r0, [sp, #116]
	ldr	r0, .L145+20
	ldr	r0, [r0, #16]
	str	r0, [sp, #96]
	ldr	r0, .L145+20
	ldr	r0, [r0, #20]
	str	r0, [sp, #88]
	ldr	r0, .L145+24
	ldr	r0, [r0, #16]
	str	r0, [sp, #80]
	ldr	r0, .L145+24
	ldr	r0, [r0, #20]
	str	r0, [sp, #72]
	ldr	r0, .L145+28
	ldr	r0, [r0, #0]
	str	r0, [sp, #104]
	mov	r0, #67108864
	ldr	r2, [r5, #4]
	ldr	r0, [r0, #304]
	ldr	r1, [r4, #4]
	ldr	r3, [r5, #0]
	add	r1, r2, r1
	ldr	fp, [r8, #20]
	str	r0, [sp, #100]
	ldr	r0, [sp, #116]
	str	r1, [sp, #112]
	ldr	r1, [r6, #16]
	rsb	fp, r2, fp
	add	r0, r3, r0
	str	r0, [sp, #108]
	str	fp, [r8, #4]
	ldr	r0, [r6, #20]
	rsb	fp, r3, r1
	ldr	r1, [r7, #16]
	rsb	r0, r2, r0
	rsb	r1, r3, r1
	str	r0, [r6, #4]
	str	r1, [r7, #0]
	ldr	r0, [r7, #20]
	ldr	r1, [sp, #96]
	ldr	sl, .L145+32
	rsb	r0, r2, r0
	rsb	r1, r3, r1
	ldr	r9, [sl, #16]
	ldr	ip, [r8, #16]
	ldr	sl, [sl, #20]
	str	r0, [r7, #4]
	str	r1, [sp, #92]
	ldr	r0, [sp, #88]
	rsb	r0, r2, r0
	str	r0, [sp, #84]
	ldr	r1, [sp, #80]
	ldr	r0, [sp, #72]
	rsb	r1, r3, r1
	rsb	r0, r2, r0
	str	r1, [sp, #76]
	str	r0, [sp, #20]
	ldr	r1, [sp, #104]
	ldr	r0, .L145+36
	str	r1, [r0, #0]
	ldr	r1, [sp, #100]
	ldr	r0, .L145+28
	str	r1, [r0, #0]
	ldr	r1, [sp, #108]
	ldr	r0, [sp, #112]
	str	r1, [r4, #16]
	ldr	r1, .L145+32
	rsb	sl, r2, sl
	rsb	r9, r3, r9
	stmia	r1, {r9, sl}	@ phole stm
	str	r0, [r4, #20]
	ldr	r1, [sp, #20]
	ldr	r0, .L145+24
	str	r1, [r0, #4]
	ldr	r1, .L145+40
	ldr	sl, .L145+20
	ldr	r1, [r1, #16]
	str	fp, [r6, #0]
	ldr	fp, [sp, #84]
	rsb	ip, r3, ip
	str	fp, [sl, #4]
	str	ip, [r8, #0]
	ldr	fp, .L145+44
	ldr	ip, [sp, #76]
	str	r1, [sp, #16]
	ldr	r1, .L145+40
	ldr	r9, [sp, #92]
	str	ip, [r0, #0]
	ldr	ip, [fp, #16]
	ldr	r0, [fp, #20]
	ldr	fp, [r1, #20]
	ldr	r1, .L145+48
	str	r9, [sl, #0]
	ldr	r1, [r1, #16]
	ldr	sl, .L145+52
	add	r9, sl, #16
	ldmia	r9, {r9, sl}	@ phole ldm
	str	r1, [sp, #68]
	ldr	r1, .L145+48
	ldr	r1, [r1, #20]
	str	r1, [sp, #60]
	ldr	r1, .L145+56
	ldr	r1, [r1, #16]
	str	r1, [sp, #52]
	ldr	r1, .L145+56
	ldr	r1, [r1, #20]
	str	r1, [sp, #44]
	ldr	r1, .L145+60
	ldr	r1, [r1, #16]
	str	r1, [sp, #36]
	ldr	r1, .L145+60
	ldr	r1, [r1, #20]
	str	r1, [sp, #28]
	ldr	r1, [sp, #16]
	rsb	r1, r3, r1
	str	r1, [sp, #12]
	ldr	r1, [sp, #68]
	rsb	r1, r3, r1
	str	r1, [sp, #64]
	ldr	r1, [sp, #60]
	rsb	r1, r2, r1
	str	r1, [sp, #56]
	ldr	r1, [sp, #52]
	rsb	r1, r3, r1
	str	r1, [sp, #48]
	ldr	r1, [sp, #44]
	rsb	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [sp, #36]
	rsb	r1, r3, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #28]
	rsb	sl, r2, sl
	rsb	r0, r2, r0
	rsb	fp, r2, fp
	rsb	r2, r2, r1
	ldr	r1, [sp, #104]
	tst	r1, #8
	ldr	r1, .L145+52
	rsb	r9, r3, r9
	str	r9, [r1, #0]
	ldr	r9, .L145+44
	rsb	ip, r3, ip
	str	sl, [r1, #4]
	str	ip, [r9, #0]
	str	r0, [r9, #4]
	ldr	sl, [sp, #12]
	ldr	ip, .L145+40
	ldr	r0, [sp, #64]
	ldr	r1, .L145+48
	ldr	r9, [sp, #56]
	stmia	ip, {sl, fp}	@ phole stm
	str	r0, [r1, #0]
	ldr	fp, .L145+56
	str	r9, [r1, #4]
	ldr	r1, .L145+60
	ldr	sl, [sp, #48]
	ldr	ip, [sp, #40]
	ldr	r0, [sp, #32]
	stmia	fp, {sl, ip}	@ phole stm
	stmia	r1, {r0, r2}	@ phole stm
	beq	.L68
	ldr	r9, [sp, #100]
	ands	r2, r9, #8
	beq	.L132
.L68:
	ldr	r1, [r4, #36]
	cmp	r1, #4
	ldrne	ip, .L145
	ldreq	fp, .L145
	ldrne	r2, [ip, #32]
	ldreq	r2, [fp, #32]
	ldr	lr, .L145+64
	addne	r2, r2, #1
	strne	r1, [ip, #40]
	smull	r1, r0, lr, r2
	mov	r1, r2, asr #31
	rsb	r1, r1, r0, asr #3
	add	r1, r1, r1, asl #2
	strne	r2, [ip, #32]
	cmp	r2, r1, asl #2
	bne	.L72
	ldr	r2, [r4, #44]
	ldr	r9, .L145+68
	add	r2, r2, #1
	smull	sl, r1, r9, r2
	sub	r1, r1, r2, asr #31
	add	r1, r1, r1, asl #1
	rsb	r2, r1, r2
	str	r2, [r4, #44]
.L72:
	mov	r2, #67108864
	ldr	r2, [r2, #304]
	tst	r2, #64
	bne	.L73
	add	fp, sp, #108
	ldmia	fp, {fp, ip}	@ phole ldm
	sub	r2, fp, #1
	add	r2, ip, r2, asl #9
	ldr	lr, .L145+72
	mov	r2, r2, asl #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	mov	r2, #1
	str	r2, [r4, #36]
	beq	.L73
	ldr	r0, [sp, #116]
	cmp	r0, #0
	beq	.L73
	cmp	r0, #72
	ble	.L74
	ldr	r1, .L145
	sub	r3, r0, #1
	str	r3, [r1, #0]
.L73:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #128
	bne	.L76
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #16]
	ldr	r1, [r4, #20]
	add	r2, r3, r2
	add	r2, r2, #1
	add	r2, r1, r2, asl #9
	ldr	sl, .L145+72
	mov	r2, r2, asl #1
	ldrh	r2, [sl, r2]
	cmp	r2, #0
	mov	r2, #0
	str	r2, [r4, #36]
	beq	.L76
	ldr	fp, .L145
	ldr	r2, [fp, #0]
	add	r1, r2, r3
	cmp	r1, #0
	beq	.L76
	cmp	r2, #71
	addle	r2, r2, #1
	strle	r2, [fp, #0]
	ble	.L76
	ldr	r1, [r5, #0]
	cmp	r1, #95
	bgt	.L78
	ldr	ip, .L145+4
	add	r1, r1, #1
	str	r1, [ip, #0]
.L76:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L79
	add	r2, r4, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	ldr	r0, .L145+72
	add	r2, r3, r2, asl #9
	add	r2, r0, r2, asl #1
	ldr	r3, [r5, #12]
	ldrh	r2, [r2, #-2]
	sub	r3, r3, #1
	cmp	r2, #0
	mov	r2, #3
	str	r2, [r4, #36]
	str	r3, [r5, #12]
	beq	.L79
	ldr	r1, .L145
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L79
	cmp	r3, #112
	subgt	r3, r3, #1
	strgt	r3, [r1, #4]
	bgt	.L79
	ldr	r9, .L145+4
	ldr	r2, [r9, #4]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r9, #4]
	ble	.L133
.L79:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L82
	add	r1, r4, #16
	ldmia	r1, {r1, r2, r3}	@ phole ldm
	add	r1, r2, r1, asl #9
	ldr	fp, .L145+72
	add	r1, r1, r3
	add	r1, fp, r1, asl #1
	ldr	r2, [r5, #12]
	ldrh	r1, [r1, #2]
	add	r2, r2, #1
	cmp	r1, #0
	mov	r1, #2
	str	r1, [r4, #36]
	str	r2, [r5, #12]
	beq	.L82
	ldr	ip, .L145
	ldr	r2, [ip, #4]
	adds	r1, r2, r3
	beq	.L82
	rsb	r3, r3, #170
	cmp	r1, r3
	addlt	r2, r2, #1
	strlt	r2, [ip, #4]
	blt	.L82
	ldr	lr, .L145+4
	mov	r3, #848
	ldr	r2, [lr, #4]
	add	r3, r3, #1
	cmp	r2, r3
	addle	r2, r2, #1
	strle	r2, [lr, #4]
.L82:
	ldr	r0, .L145+36
	ldr	r3, [r0, #0]
	tst	r3, #1
	beq	.L84
	ldr	r1, .L145+28
	ldr	r3, [r1, #0]
	tst	r3, #1
	bne	.L84
	ldmia	r4, {r1, r2, r3}	@ phole ldm
	ldr	r0, [r4, #12]
	sub	r3, r3, r3, asl #2
	add	r2, r0, r2
	add	r3, r3, r1
	str	r2, [r4, #4]
	str	r3, [r4, #0]
.L84:
	bl	updateOAM
	ldrh	r2, [r5, #8]
	ldrh	ip, [r5, #4]
	ldrh	r0, [r5, #0]
	ldrh	r1, [r5, #12]
	mov	r3, #67108864
	ldr	r9, .L145+96
	strh	ip, [r3, #16]	@ movhi
	strh	r0, [r3, #18]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	ldr	r2, .L145+76
	mov	lr, pc
	bx	r2
	ldr	r3, [r9, #0]
	mov	r2, #3888
	sub	r3, r3, #1
	add	r2, r2, #12
	cmp	r3, r2
	str	r3, [r9, #0]
	beq	.L134
	mov	r2, #3792
	add	r2, r2, #8
	cmp	r3, r2
	beq	.L135
	mov	r2, #3744
	add	r2, r2, #6
	cmp	r3, r2
	bne	.L88
	ldr	ip, .L145+4
	ldr	r2, [ip, #8]
	sub	r2, r2, #13
	str	r2, [ip, #8]
.L89:
	mov	r2, #1696
	add	r2, r2, #4
	cmp	r3, r2
	bne	.L95
	ldr	r2, [r5, #8]
	sub	r2, r2, #8
	str	r2, [r5, #8]
.L96:
	cmp	r3, #200
	bne	.L97
.L129:
	ldr	r3, [r5, #8]
	sub	r3, r3, #3
	str	r3, [r5, #8]
.L100:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #2
	beq	.L101
	ldr	r2, .L145+32
	ldr	sl, [r4, #24]
	ldr	r3, [r2, #20]
	ldr	ip, [r4, #20]
	add	r2, sl, r3
	rsb	r2, ip, r2
	cmp	r2, #99
	ble	.L102
	ldr	r3, .L145
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #28]
	add	r0, r1, r2
.L103:
	ldr	r3, [r6, #16]
	cmp	r0, r3
	ble	.L131
	ldr	fp, .L145+8
	ldr	ip, [r4, #20]
	ldr	r9, [r4, #24]
	ldr	sl, [fp, #20]
	add	r9, ip, r9
	cmp	r9, sl
	blt	.L131
	ldr	fp, .L145+8
	ldr	r9, [fp, #28]
	add	fp, r2, r2, lsr #31
	add	r9, r9, r9, lsr #31
	add	fp, r1, fp, asr #1
	add	r9, r3, r9, asr #1
	cmp	fp, r9
	bgt	.L131
	ldr	r9, .L145+8
	ldr	r3, [r9, #24]
	add	sl, sl, r3
	cmp	ip, sl
	ble	.L127
	ldr	sl, .L145+80
	str	sl, [sp, #104]
.L106:
	ldr	ip, [r7, #16]
	cmp	r0, ip
	ldr	r3, .L145+16
	ble	.L107
	ldr	r9, [r4, #20]
	str	r9, [sp, #112]
	ldr	fp, [sp, #112]
	ldr	r9, [r4, #24]
	ldr	sl, [r3, #20]
	add	r9, fp, r9
	cmp	r9, sl
	blt	.L107
	add	r9, r2, r2, lsr #31
	ldr	fp, [r3, #28]
	add	r9, r1, r9, asr #1
	add	fp, fp, fp, lsr #31
	str	r9, [sp, #100]
	str	fp, [sp, #108]
	add	r9, ip, fp, asr #1
	ldr	fp, [sp, #100]
	cmp	fp, r9
	bgt	.L107
	ldr	ip, [r3, #24]
	add	sl, sl, ip
	ldr	ip, [sp, #112]
	cmp	ip, sl
	ble	.L136
.L107:
	ldr	fp, .L145+20
	ldr	ip, [fp, #16]
	cmp	r0, ip
	mov	r3, fp
	ble	.L108
	ldr	r9, [r4, #20]
	str	r9, [sp, #112]
	ldr	sl, [fp, #20]
	ldr	r9, [r4, #24]
	ldr	fp, [sp, #112]
	add	r9, fp, r9
	cmp	r9, sl
	blt	.L108
	add	r9, r2, r2, lsr #31
	ldr	fp, [r3, #28]
	add	r9, r1, r9, asr #1
	add	fp, fp, fp, lsr #31
	str	r9, [sp, #100]
	str	fp, [sp, #108]
	add	r9, ip, fp, asr #1
	ldr	fp, [sp, #100]
	cmp	fp, r9
	bgt	.L108
	ldr	ip, [r3, #24]
	add	sl, sl, ip
	ldr	ip, [sp, #112]
	cmp	ip, sl
	ble	.L137
.L108:
	ldr	fp, .L145+24
	ldr	ip, [fp, #16]
	cmp	r0, ip
	mov	r3, fp
	ble	.L109
	ldr	r9, [r4, #20]
	str	r9, [sp, #112]
	ldr	sl, [fp, #20]
	ldr	r9, [r4, #24]
	ldr	fp, [sp, #112]
	add	r9, fp, r9
	cmp	r9, sl
	blt	.L109
	add	r9, r2, r2, lsr #31
	ldr	fp, [r3, #28]
	add	r9, r1, r9, asr #1
	add	fp, fp, fp, lsr #31
	str	r9, [sp, #100]
	str	fp, [sp, #108]
	add	r9, ip, fp, asr #1
	ldr	fp, [sp, #100]
	cmp	fp, r9
	bgt	.L109
	ldr	ip, [r3, #24]
	add	sl, sl, ip
	ldr	ip, [sp, #112]
	cmp	ip, sl
	ble	.L138
.L109:
	ldr	fp, .L145+52
	ldr	ip, [fp, #16]
	cmp	r0, ip
	mov	r3, fp
	ble	.L110
	ldr	r9, [r4, #20]
	str	r9, [sp, #112]
	ldr	sl, [fp, #20]
	ldr	r9, [r4, #24]
	ldr	fp, [sp, #112]
	add	r9, fp, r9
	cmp	r9, sl
	blt	.L110
	add	r9, r2, r2, lsr #31
	ldr	fp, [r3, #28]
	add	r9, r1, r9, asr #1
	add	fp, fp, fp, lsr #31
	str	r9, [sp, #100]
	str	fp, [sp, #108]
	add	r9, ip, fp, asr #1
	ldr	fp, [sp, #100]
	cmp	fp, r9
	bgt	.L110
	ldr	ip, [r3, #24]
	add	sl, sl, ip
	ldr	ip, [sp, #112]
	cmp	ip, sl
	ble	.L139
.L110:
	ldr	fp, .L145+44
	ldr	ip, [fp, #16]
	cmp	r0, ip
	mov	r3, fp
	ble	.L111
	ldr	r9, [r4, #20]
	str	r9, [sp, #112]
	ldr	sl, [fp, #20]
	ldr	r9, [r4, #24]
	ldr	fp, [sp, #112]
	add	r9, fp, r9
	cmp	r9, sl
	blt	.L111
	add	r9, r2, r2, lsr #31
	ldr	fp, [r3, #28]
	add	r9, r1, r9, asr #1
	add	fp, fp, fp, lsr #31
	str	r9, [sp, #100]
	str	fp, [sp, #108]
	add	r9, ip, fp, asr #1
	ldr	fp, [sp, #100]
	cmp	fp, r9
	bgt	.L111
	ldr	ip, [r6, #24]
	add	sl, sl, ip
	ldr	ip, [sp, #112]
	cmp	ip, sl
	ble	.L140
.L111:
	ldr	fp, .L145+40
	ldr	ip, [fp, #16]
	cmp	r0, ip
	mov	r3, fp
	ble	.L112
	ldr	r9, [r4, #20]
	str	r9, [sp, #112]
	ldr	sl, [fp, #20]
	ldr	r9, [r4, #24]
	ldr	fp, [sp, #112]
	add	r9, fp, r9
	cmp	r9, sl
	blt	.L112
	add	r9, r2, r2, lsr #31
	ldr	fp, [r3, #28]
	add	r9, r1, r9, asr #1
	add	fp, fp, fp, lsr #31
	str	r9, [sp, #100]
	str	fp, [sp, #108]
	add	r9, ip, fp, asr #1
	ldr	fp, [sp, #100]
	cmp	fp, r9
	bgt	.L112
	ldr	ip, [r3, #24]
	add	sl, sl, ip
	ldr	ip, [sp, #112]
	cmp	ip, sl
	ble	.L141
.L112:
	ldr	fp, .L145+48
	ldr	ip, [fp, #16]
	cmp	ip, r0
	mov	r3, fp
	bge	.L113
	ldr	r9, [r4, #20]
	str	r9, [sp, #112]
	ldr	sl, [fp, #20]
	ldr	r9, [r4, #24]
	ldr	fp, [sp, #112]
	add	r9, fp, r9
	cmp	r9, sl
	blt	.L113
	add	r9, r2, r2, lsr #31
	ldr	fp, [r3, #28]
	add	r9, r1, r9, asr #1
	add	fp, fp, fp, lsr #31
	str	r9, [sp, #100]
	str	fp, [sp, #108]
	add	r9, ip, fp, asr #1
	ldr	fp, [sp, #100]
	cmp	fp, r9
	bgt	.L113
	ldr	ip, [r3, #24]
	add	sl, sl, ip
	ldr	ip, [sp, #112]
	cmp	ip, sl
	ble	.L142
.L113:
	ldr	fp, .L145+56
	ldr	ip, [fp, #16]
	cmp	ip, r0
	mov	r3, fp
	bge	.L114
	ldr	r9, [r4, #20]
	str	r9, [sp, #112]
	ldr	sl, [fp, #20]
	ldr	r9, [r4, #24]
	ldr	fp, [sp, #112]
	add	r9, fp, r9
	cmp	r9, sl
	blt	.L114
	add	r9, r2, r2, lsr #31
	ldr	fp, [r3, #28]
	add	r9, r1, r9, asr #1
	add	fp, fp, fp, lsr #31
	str	r9, [sp, #100]
	str	fp, [sp, #108]
	add	r9, ip, fp, asr #1
	ldr	fp, [sp, #100]
	cmp	fp, r9
	bgt	.L114
	ldr	ip, [r3, #24]
	add	sl, sl, ip
	ldr	ip, [sp, #112]
	cmp	ip, sl
	ble	.L143
.L114:
	ldr	fp, .L145+60
	ldr	ip, [fp, #16]
	cmp	ip, r0
	bge	.L115
	add	r0, r4, #20
	ldmia	r0, {r0, r9}	@ phole ldm
	ldr	sl, [fp, #20]
	add	r9, r0, r9
	cmp	r9, sl
	blt	.L115
	ldr	r9, [fp, #28]
	add	r2, r2, r2, lsr #31
	add	r9, r9, r9, lsr #31
	add	r2, r1, r2, asr #1
	add	r9, ip, r9, asr #1
	cmp	r2, r9
	bgt	.L115
	ldr	r2, [fp, #24]
	add	sl, sl, r2
	cmp	r0, sl
	ble	.L144
.L115:
	ldr	sl, [sp, #104]
	ldr	r3, [sl, #0]
	cmp	r3, #6
	ble	.L123
	ldr	r1, [r8, #28]
	ldr	r3, [r4, #16]
	ldr	r2, [r8, #0]
	add	r3, r1, r3
	rsb	r3, r2, r3
	cmp	r3, #60
	bgt	.L123
	ldr	fp, .L145
	ldr	r3, .L145+12
	ldr	r1, [fp, #24]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #20]
	add	r3, r1, r3
	rsb	r3, r2, r3
	cmp	r3, #45
	bgt	.L123
	bl	stopSound
	ldr	r3, .L145+112
	mov	ip, #0
	mov	r1, #18176
	mov	r2, #11008
	str	ip, [r3, #16]
	ldr	r0, .L145+84
	add	r1, r1, #26
	add	r2, r2, #17
	bl	playSoundA
	mov	r3, #4
	str	r3, [r5, #16]
	b	.L67
.L131:
	ldr	ip, .L145+80
	str	ip, [sp, #104]
	b	.L106
.L101:
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #28]
	add	r0, r1, r2
	b	.L103
.L135:
	ldr	fp, .L145+4
	ldr	r2, [fp, #8]
	sub	r2, r2, #10
	str	r2, [fp, #8]
.L92:
	mov	r2, #2496
	add	r2, r2, #4
	cmp	r3, r2
	bne	.L89
	ldr	r2, [r5, #8]
	sub	r2, r2, #9
	str	r2, [r5, #8]
.L94:
	cmp	r3, #300
	bne	.L96
	ldr	r3, [r5, #8]
	sub	r3, r3, #6
	str	r3, [r5, #8]
	b	.L100
.L134:
	ldr	sl, .L145+4
	ldr	r2, [sl, #8]
	sub	r2, r2, #8
	str	r2, [sl, #8]
	b	.L92
.L102:
	cmp	r3, #244
	bgt	.L104
	ldr	r9, .L145
	ldr	r1, [r9, #16]
	ldr	r2, [r9, #28]
	add	r0, r1, r2
	b	.L103
.L88:
	mov	r2, #3488
	add	r2, r2, #12
	cmp	r3, r2
	bne	.L90
	ldr	r0, .L145+4
	ldr	r2, [r0, #8]
	sub	r2, r2, #15
	str	r2, [r0, #8]
.L91:
	mov	r2, #748
	add	r2, r2, #2
	cmp	r3, r2
	bne	.L93
	ldr	r2, [r5, #8]
	sub	r2, r2, #2
	str	r2, [r5, #8]
.L98:
	cmp	r3, #50
	bne	.L99
.L128:
	ldr	r3, [r5, #8]
	sub	r3, r3, #1
	str	r3, [r5, #8]
	b	.L100
.L104:
	ldr	r0, .L145+32
	ldr	fp, .L145
	ldr	r0, [r0, #16]
	ldr	r1, [fp, #16]
	ldr	r2, [fp, #28]
	str	r0, [sp, #104]
	ldr	fp, [sp, #104]
	add	r0, r2, r1
	rsb	r9, r0, fp
	cmp	r9, #2
	bgt	.L103
	add	r9, r3, fp, asl #9
	ldr	fp, .L145+72
	mov	r9, r9, asl #1
	ldrh	r9, [fp, r9]
	cmp	r9, #0
	ldrne	r9, .L145+32
	ldrne	fp, [r9, #12]
	rsbne	r3, fp, r3
	ldr	fp, .L145+32
	strne	r3, [r9, #20]
	ldr	fp, [fp, #28]
	ldr	r3, .L145+68
	str	fp, [sp, #4]
	smull	r9, fp, r3, fp
	ldr	r9, [sp, #4]
	sub	r3, fp, r9, asr #31
	ldr	r9, [sp, #104]
	add	fp, r3, r9
	cmp	r0, fp
	ble	.L103
	ldr	fp, .L145+32
	ldr	r3, [fp, #20]
	add	sl, sl, ip
	add	r9, r3, #7
	cmp	r9, sl
	bge	.L103
	ldr	sl, [fp, #24]
	add	r3, r3, sl
	sub	r3, r3, #7
	cmp	ip, r3
	bge	.L103
	bl	stopSound
	ldr	r3, .L145+112
	mov	ip, #0
	mov	r1, #65536
	mov	r2, #11008
	str	ip, [r3, #16]
	ldr	r0, .L145+116
	sub	r1, r1, #121
	add	r2, r2, #17
	bl	playSoundA
	mov	r3, #3
	str	r3, [r5, #16]
	b	.L67
.L74:
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r5, #0]
	bgt	.L73
	ldr	r2, [sp, #116]
	cmp	r2, r3
	blt	.L73
	cmp	r2, #0
	ldrgt	r9, .L145
	subgt	r3, r2, #1
	strgt	r3, [r9, #0]
	b	.L73
.L127:
	ldr	fp, .L145+80
	ldr	ip, [fp, #0]
	add	ip, ip, #1
	str	ip, [fp, #0]
	ldr	ip, .L145+8
	mov	r3, #0
	str	r3, [ip, #16]
	ldr	ip, .L145+100
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	r3, [ip, #16]
	bl	playSoundB
	ldr	r0, .L145
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #28]
	str	fp, [sp, #104]
	add	r0, r1, r2
	b	.L106
.L136:
	ldr	r0, [sp, #104]
	mov	ip, #0
	ldr	lr, [r0, #0]
	str	ip, [r3, #16]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	add	lr, lr, #1
	ldr	sl, .L145
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	lr, [r9, #0]
	str	ip, [r3, #16]
	bl	playSoundB
	ldr	r1, [sl, #16]
	ldr	r2, [sl, #28]
	add	r0, r1, r2
	b	.L107
.L143:
	ldr	r0, [sp, #104]
	mov	ip, #0
	ldr	lr, [r0, #0]
	str	ip, [r3, #16]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	add	lr, lr, #1
	ldr	sl, .L145
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	lr, [r9, #0]
	str	ip, [r3, #16]
	bl	playSoundB
	ldr	r1, [sl, #16]
	ldr	r2, [sl, #28]
	add	r0, r2, r1
	b	.L114
.L144:
	ldr	lr, [sp, #104]
	ldr	ip, [lr, #0]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	mov	lr, #0
	add	ip, ip, #1
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	ip, [r9, #0]
	str	lr, [fp, #16]
	str	lr, [r3, #16]
	bl	playSoundB
	b	.L115
.L137:
	ldr	r0, [sp, #104]
	mov	ip, #0
	ldr	lr, [r0, #0]
	str	ip, [r3, #16]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	add	lr, lr, #1
	ldr	sl, .L145
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	lr, [r9, #0]
	str	ip, [r3, #16]
	bl	playSoundB
	ldr	r1, [sl, #16]
	ldr	r2, [sl, #28]
	add	r0, r1, r2
	b	.L108
.L138:
	ldr	r0, [sp, #104]
	mov	ip, #0
	ldr	lr, [r0, #0]
	str	ip, [r3, #16]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	add	lr, lr, #1
	ldr	sl, .L145
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	lr, [r9, #0]
	str	ip, [r3, #16]
	bl	playSoundB
	ldr	r1, [sl, #16]
	ldr	r2, [sl, #28]
	add	r0, r2, r1
	b	.L109
.L139:
	ldr	r0, [sp, #104]
	mov	ip, #0
	ldr	lr, [r0, #0]
	str	ip, [r3, #16]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	add	lr, lr, #1
	ldr	sl, .L145
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	lr, [r9, #0]
	str	ip, [r3, #16]
	bl	playSoundB
	ldr	r1, [sl, #16]
	ldr	r2, [sl, #28]
	add	r0, r2, r1
	b	.L110
.L140:
	ldr	r0, [sp, #104]
	mov	ip, #0
	ldr	lr, [r0, #0]
	str	ip, [r3, #16]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	add	lr, lr, #1
	ldr	sl, .L145
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	lr, [r9, #0]
	str	ip, [r3, #16]
	bl	playSoundB
	ldr	r1, [sl, #16]
	ldr	r2, [sl, #28]
	add	r0, r2, r1
	b	.L111
.L141:
	ldr	r0, [sp, #104]
	mov	ip, #0
	ldr	lr, [r0, #0]
	str	ip, [r3, #16]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	add	lr, lr, #1
	ldr	sl, .L145
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	lr, [r9, #0]
	str	ip, [r3, #16]
	bl	playSoundB
	ldr	r1, [sl, #16]
	ldr	r2, [sl, #28]
	add	r0, r2, r1
	b	.L112
.L142:
	ldr	r0, [sp, #104]
	mov	ip, #0
	ldr	lr, [r0, #0]
	str	ip, [r3, #16]
	ldr	r9, [sp, #104]
	ldr	r3, .L145+100
	add	lr, lr, #1
	ldr	sl, .L145
	mov	r1, #31488
	mov	r2, #44032
	ldr	r0, .L145+88
	add	r1, r1, #250
	add	r2, r2, #68
	str	lr, [r9, #0]
	str	ip, [r3, #16]
	bl	playSoundB
	ldr	r1, [sl, #16]
	ldr	r2, [sl, #28]
	add	r0, r2, r1
	b	.L113
.L146:
	.align	2
.L145:
	.word	chicken
	.word	.LANCHOR0
	.word	proof1
	.word	king
	.word	proof2
	.word	proof3
	.word	proof4
	.word	buttons
	.word	foxy
	.word	oldButtons
	.word	proof7
	.word	proof6
	.word	proof8
	.word	proof5
	.word	proof9
	.word	proof10
	.word	1717986919
	.word	1431655766
	.word	collisionmapBitmap
	.word	waitForVblank
	.word	collectedItems
	.word	winnerSound
	.word	cluck
	.word	chicken
	.word	timer
	.word	soundB
	.word	newTimer
	.word	.LANCHOR0
	.word	soundA
	.word	loserSound
.L78:
	rsb	r3, r3, #160
	cmp	r2, r3
	ldrlt	lr, .L145+92
	addlt	r2, r2, #1
	strlt	r2, [lr, #0]
	b	.L76
.L133:
	cmp	r3, #0
	ldrgt	sl, .L145+92
	subgt	r3, r3, #1
	strgt	r3, [sl, #4]
	b	.L79
.L132:
	ldr	r0, .L145+108
	mov	ip, #5
	str	ip, [r0, #16]
	mov	r3, #67108864
	ldr	sl, .L145+96
	ldr	r0, .L145+112
	add	r3, r3, #256
	ldr	r1, [sl, #0]
	strh	r2, [r3, #2]	@ movhi
	str	r2, [r0, #12]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, .L145+100
	str	r2, [r3, #12]
	ldr	r3, .L145+104
	str	r1, [r3, #0]
.L67:
	add	sp, sp, #124
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L90:
	mov	r2, #2992
	add	r2, r2, #8
	cmp	r3, r2
	bne	.L92
	ldr	r1, .L145+108
	ldr	r2, [r1, #8]
	sub	r2, r2, #17
	str	r2, [r1, #8]
.L93:
	cmp	r3, #500
	beq	.L129
	b	.L94
.L99:
	cmp	r3, #0
	bne	.L100
	ldr	ip, .L145+112
	mov	r1, #65536
	mov	r2, #11008
	str	r3, [ip, #16]
	ldr	r0, .L145+116
	sub	r1, r1, #121
	add	r2, r2, #17
	bl	playSoundA
	mov	r3, #3
	str	r3, [r5, #16]
	b	.L67
.L97:
	cmp	r3, #100
	beq	.L128
	b	.L98
.L95:
	cmp	r3, #1000
	bne	.L91
	ldr	r3, [r5, #8]
	sub	r3, r3, #7
	str	r3, [r5, #8]
	b	.L100
	.size	game, .-game
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r3, #1024
	add	r3, r3, #4
	mov	r4, #67108864
	ldr	r5, .L151
	strh	r3, [r4, #0]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r0, .L151+4
	ldr	r3, .L151+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L151+12
	ldr	r3, .L151+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L151+20
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r5
	ldr	r1, .L151+24
	ldr	ip, .L151+28
	ldr	r2, [r1, #0]
	mov	r0, r4
.L148:
	ldr	r3, [r0, #304]
	tst	r2, #8
	str	r2, [ip, #0]
	str	r3, [r1, #0]
	beq	.L149
	ands	r4, r3, #8
	beq	.L150
.L149:
	mov	r2, r3
	b	.L148
.L150:
	bl	stopSound
	mov	r0, #251
	ldr	r3, .L151+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L151+36
	mov	r1, #162816
	mov	ip, #1
	add	r1, r1, #324
	mov	r2, #11008
	str	ip, [r3, #16]
	ldr	r0, .L151+40
	add	r1, r1, #3
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L151+44
	str	r4, [r3, #16]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L152:
	.align	2
.L151:
	.word	flipPage
	.word	loseScreenPal
	.word	loadPalette
	.word	loseScreenBitmap
	.word	drawBackgroundImage4
	.word	waitForVblank
	.word	buttons
	.word	oldButtons
	.word	fillScreen4
	.word	soundA
	.word	thunder
	.word	.LANCHOR0
	.size	lose, .-lose
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r3, #1024
	add	r3, r3, #4
	mov	r4, #67108864
	ldr	r5, .L157
	strh	r3, [r4, #0]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r0, .L157+4
	ldr	r3, .L157+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L157+12
	ldr	r3, .L157+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L157+20
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r5
	ldr	r1, .L157+24
	ldr	ip, .L157+28
	ldr	r2, [r1, #0]
	mov	r0, r4
.L154:
	ldr	r3, [r0, #304]
	tst	r2, #8
	str	r2, [ip, #0]
	str	r3, [r1, #0]
	beq	.L155
	ands	r4, r3, #8
	beq	.L156
.L155:
	mov	r2, r3
	b	.L154
.L156:
	bl	stopSound
	mov	r0, #251
	ldr	r3, .L157+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L157+36
	mov	r1, #162816
	mov	ip, #1
	add	r1, r1, #324
	mov	r2, #11008
	str	ip, [r3, #16]
	ldr	r0, .L157+40
	add	r1, r1, #3
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L157+44
	str	r4, [r3, #16]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L158:
	.align	2
.L157:
	.word	flipPage
	.word	winScreenPal
	.word	loadPalette
	.word	winScreenBitmap
	.word	drawBackgroundImage4
	.word	waitForVblank
	.word	buttons
	.word	oldButtons
	.word	fillScreen4
	.word	soundA
	.word	thunder
	.word	.LANCHOR0
	.size	win, .-win
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1024
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	add	r3, r3, #4
	mov	r4, #67108864
	ldr	r5, .L166
	strh	r3, [r4, #0]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r8, .L166+4
	ldr	r0, .L166+8
	ldr	r3, .L166+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+16
	ldr	r0, .L166+20
	mov	lr, pc
	bx	r3
	ldr	r7, .L166+24
	ldr	r1, .L166+28
	ldr	r2, [r8, #0]
	ldr	r0, .L166+32
	mov	lr, pc
	bx	r7
	ldr	r6, .L166+36
	mov	r3, #250
	mov	r0, #80
	mov	r1, #10
	ldr	r2, .L166+32
	mov	lr, pc
	bx	r6
	ldr	r3, .L166+40
	ldr	r1, .L166+44
	ldr	r2, [r3, #0]
	ldr	r0, .L166+32
	mov	lr, pc
	bx	r7
	mov	r0, #90
	mov	r1, #10
	ldr	r2, .L166+32
	mov	r3, #250
	mov	lr, pc
	bx	r6
	ldr	r3, .L166+48
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r5
	ldr	r1, .L166+52
	ldr	r0, .L166+56
	ldr	r2, [r1, #0]
.L160:
	ldr	r3, [r4, #304]
	tst	r2, #8
	str	r2, [r0, #0]
	str	r3, [r1, #0]
	beq	.L161
	tst	r3, #8
	beq	.L164
.L161:
	tst	r2, #4
	beq	.L163
	ands	r5, r3, #4
	beq	.L165
.L163:
	mov	r2, r3
	b	.L160
.L164:
	mov	r2, #67108864
	mov	r1, #128	@ movhi
	add	r2, r2, #256
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	ldr	r2, .L166+60
	mov	r3, #1
	str	r3, [r2, #12]
	ldr	r2, .L166+64
	mov	r0, #251
	str	r3, [r2, #12]
	ldr	r3, .L166+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+72
	mov	r2, #2
	str	r2, [r3, #16]
	bl	initializeGameBGs
	ldr	r3, .L166+76
	ldr	r3, [r3, #0]
	str	r3, [r8, #0]
.L159:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L165:
	bl	stopSound
	mov	r0, #251
	ldr	r3, .L166+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+60
	mov	r1, #162816
	mov	ip, #1
	add	r1, r1, #324
	mov	r2, #11008
	str	ip, [r3, #16]
	ldr	r0, .L166+80
	add	r1, r1, #3
	add	r2, r2, #17
	bl	playSoundA
	ldr	r3, .L166+72
	str	r5, [r3, #16]
	b	.L159
.L167:
	.align	2
.L166:
	.word	flipPage
	.word	timer
	.word	pauseScreenPal
	.word	loadPalette
	.word	drawBackgroundImage4
	.word	pauseScreenBitmap
	.word	sprintf
	.word	.LC0
	.word	buffer
	.word	drawString4
	.word	collectedItems
	.word	.LC1
	.word	waitForVblank
	.word	buttons
	.word	oldButtons
	.word	soundA
	.word	soundB
	.word	fillScreen4
	.word	.LANCHOR0
	.word	newTimer
	.word	thunder
	.size	pause, .-pause
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r3, #1024
	mov	r4, #67108864
	add	r3, r3, #4
	strh	r3, [r4, #0]	@ movhi
	add	ip, r4, #512
	ldrh	r2, [ip, #0]
	ldr	r1, .L181
	mov	r3, #50331648
	add	r3, r3, #28672
	orr	r2, r2, #1
	str	r1, [r3, #4092]
	strh	r2, [ip, #0]	@ movhi
	ldrh	r0, [r4, #4]
	mov	r5, #1
	orr	r0, r0, #8
	strh	r0, [r4, #4]	@ movhi
	strh	r5, [ip, #8]	@ movhi
	mov	ip, #128	@ movhi
	strh	ip, [r4, #132]	@ movhi
	mvn	lr, #1264
	mov	ip, #0	@ movhi
	mov	r3, #83886080
	strh	ip, [r4, #128]	@ movhi
	add	r3, r3, #256
	sub	lr, lr, #1
	mvn	ip, #32768
	strh	lr, [r4, #130]	@ movhi
	strh	ip, [r3, #244]	@ movhi
	mov	ip, #0	@ movhi
	strh	ip, [r3, #246]	@ movhi
	mov	ip, #31	@ movhi
	strh	ip, [r3, #248]	@ movhi
	mov	ip, #31744	@ movhi
	strh	ip, [r3, #242]	@ movhi
	mov	r1, #162816
	ldr	r3, .L181+4
	add	r1, r1, #324
	mov	r2, #11008
	str	r5, [r3, #16]
	ldr	r0, .L181+8
	add	r1, r1, #3
	add	r2, r2, #17
	bl	playSoundA
	ldr	r5, .L181+12
	ldr	r7, .L181+16
	ldr	r6, .L181+20
.L180:
	ldr	r3, [r5, #0]
	ldr	r2, [r7, #16]
.L170:
	str	r3, [r6, #0]
	ldr	r3, [r4, #304]
	str	r3, [r5, #0]
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L170
.L177:
	.word	.L171
	.word	.L172
	.word	.L173
	.word	.L174
	.word	.L175
	.word	.L176
.L176:
	bl	pause
	b	.L180
.L175:
	bl	win
	b	.L180
.L174:
	bl	lose
	b	.L180
.L173:
	bl	game
	b	.L180
.L172:
	bl	instructions
	b	.L180
.L171:
	bl	splash
	b	.L180
.L182:
	.align	2
.L181:
	.word	interruptHandler
	.word	soundA
	.word	thunder
	.word	buttons
	.word	.LANCHOR0
	.word	oldButtons
	.size	main, .-main
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	add	r3, r2, #512
	str	r4, [sp, #-4]!
	ldrh	r0, [r2, #4]
	ldrh	ip, [r3, #0]
	mov	r1, #50331648
	ldr	r4, .L184
	add	r1, r1, #28672
	orr	ip, ip, #1
	orr	r0, r0, #8
	str	r4, [r1, #4092]
	strh	ip, [r3, #0]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L185:
	.align	2
.L184:
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.global	collMapSize
	.global	BG0hOff
	.global	BG0vOff
	.global	BG1hOff
	.global	BG1vOff
	.global	state
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	shadowOAM,1024,4
	.comm	chicken,48,4
	.comm	foxy,48,4
	.comm	king,48,4
	.comm	proof1,48,4
	.comm	proof2,48,4
	.comm	proof3,48,4
	.comm	proof4,48,4
	.comm	proof5,48,4
	.comm	proof6,48,4
	.comm	proof7,48,4
	.comm	proof8,48,4
	.comm	proof9,48,4
	.comm	proof10,48,4
	.comm	soundA,28,4
	.comm	soundB,28,4
	.comm	vbCountA,4,4
	.comm	vbCountB,4,4
	.comm	buffer,41,4
	.comm	timer,4,4
	.comm	tempTimer,4,4
	.comm	newTimer,4,4
	.comm	collectedItems,4,4
	.data
	.align	2
	.type	collMapSize, %object
	.size	collMapSize, 4
collMapSize:
	.word	512
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Time Left Before The Sky Falls: %i\000"
	.space	1
.LC1:
	.ascii	"You've collected %i item(s)\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	BG0vOff, %object
	.size	BG0vOff, 4
BG0vOff:
	.space	4
	.type	BG0hOff, %object
	.size	BG0hOff, 4
BG0hOff:
	.space	4
	.type	BG1vOff, %object
	.size	BG1vOff, 4
BG1vOff:
	.space	4
	.type	BG1hOff, %object
	.size	BG1hOff, 4
BG1hOff:
	.space	4
	.type	state, %object
	.size	state, 4
state:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
