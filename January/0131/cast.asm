
hello:     file format elf32-littlearm


Disassembly of section .text:

00000000 <__vectors>:
   0:	18 1c 00 00 b1 0c 00 00 41 02 00 00 41 02 00 00     ........A...A...
  10:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  20:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  30:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  40:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  50:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  60:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  70:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  80:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  90:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  a0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  b0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  c0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  d0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  e0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
  f0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 100:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 110:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 120:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 130:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 140:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 150:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 160:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 170:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 180:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 190:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 1a0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 1b0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 1c0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 1d0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 1e0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 1f0:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 200:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 210:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 220:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...
 230:	41 02 00 00 41 02 00 00 41 02 00 00 41 02 00 00     A...A...A...A...

00000240 <exception_common>:
 240:	f3ef 8005 	mrs	r0, IPSR
 244:	f01e 0f04 	tst.w	lr, #4
 248:	d002      	beq.n	250 <exception_common+0x10>
 24a:	f3ef 8109 	mrs	r1, PSP
 24e:	468d      	mov	sp, r1
 250:	466a      	mov	r2, sp
 252:	f102 0268 	add.w	r2, r2, #104	@ 0x68
 256:	f3ef 8311 	mrs	r3, BASEPRI
 25a:	ed2d 8a10 	vpush	{s16-s31}
 25e:	e92d 4ffc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 262:	b672      	cpsid	i
 264:	4669      	mov	r1, sp
 266:	466c      	mov	r4, sp
 268:	f8df d050 	ldr.w	sp, [pc, #80]	@ 2bc <exception_common+0x7c>
 26c:	f000 fde2 	bl	e34 <up_doirq>
 270:	4621      	mov	r1, r4
 272:	4288      	cmp	r0, r1
 274:	d013      	beq.n	29e <exception_common+0x5e>
 276:	f100 016c 	add.w	r1, r0, #108	@ 0x6c
 27a:	e8b1 0ff0 	ldmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 27e:	ecb1 0a10 	vldmia	r1!, {s0-s15}
 282:	e891 000c 	ldmia.w	r1, {r2, r3}
 286:	6801      	ldr	r1, [r0, #0]
 288:	e921 000c 	stmdb	r1!, {r2, r3}
 28c:	ed21 0a10 	vstmdb	r1!, {s0-s15}
 290:	e921 0ff0 	stmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 294:	e8b0 4ffc 	ldmia.w	r0!, {r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 298:	ec90 8a10 	vldmia	r0, {s16-s31}
 29c:	e003      	b.n	2a6 <exception_common+0x66>
 29e:	e8b1 4ffc 	ldmia.w	r1!, {r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 2a2:	ecb1 8a10 	vldmia	r1!, {s16-s31}
 2a6:	f01e 0f04 	tst.w	lr, #4
 2aa:	bf0c      	ite	eq
 2ac:	f381 8808 	msreq	MSP, r1
 2b0:	f381 8809 	msrne	PSP, r1
 2b4:	f383 8811 	msr	BASEPRI, r3
 2b8:	b662      	cpsie	i
 2ba:	4770      	bx	lr
 2bc:	00001800 	.word	0x00001800

000002c0 <__aeabi_uldivmod>:
 2c0:	b953      	cbnz	r3, 2d8 <__aeabi_uldivmod+0x18>
 2c2:	b94a      	cbnz	r2, 2d8 <__aeabi_uldivmod+0x18>
 2c4:	2900      	cmp	r1, #0
 2c6:	bf08      	it	eq
 2c8:	2800      	cmpeq	r0, #0
 2ca:	bf1c      	itt	ne
 2cc:	f04f 31ff 	movne.w	r1, #4294967295
 2d0:	f04f 30ff 	movne.w	r0, #4294967295
 2d4:	f000 b974 	b.w	5c0 <__aeabi_idiv0>
 2d8:	f1ad 0c08 	sub.w	ip, sp, #8
 2dc:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 2e0:	f000 f806 	bl	2f0 <__udivmoddi4>
 2e4:	f8dd e004 	ldr.w	lr, [sp, #4]
 2e8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 2ec:	b004      	add	sp, #16
 2ee:	4770      	bx	lr

000002f0 <__udivmoddi4>:
 2f0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 2f4:	9d08      	ldr	r5, [sp, #32]
 2f6:	4604      	mov	r4, r0
 2f8:	468e      	mov	lr, r1
 2fa:	2b00      	cmp	r3, #0
 2fc:	d14d      	bne.n	39a <__udivmoddi4+0xaa>
 2fe:	428a      	cmp	r2, r1
 300:	4694      	mov	ip, r2
 302:	d969      	bls.n	3d8 <__udivmoddi4+0xe8>
 304:	fab2 f282 	clz	r2, r2
 308:	b152      	cbz	r2, 320 <__udivmoddi4+0x30>
 30a:	fa01 f302 	lsl.w	r3, r1, r2
 30e:	f1c2 0120 	rsb	r1, r2, #32
 312:	fa20 f101 	lsr.w	r1, r0, r1
 316:	fa0c fc02 	lsl.w	ip, ip, r2
 31a:	ea41 0e03 	orr.w	lr, r1, r3
 31e:	4094      	lsls	r4, r2
 320:	ea4f 481c 	mov.w	r8, ip, lsr #16
 324:	0c21      	lsrs	r1, r4, #16
 326:	fbbe f6f8 	udiv	r6, lr, r8
 32a:	fa1f f78c 	uxth.w	r7, ip
 32e:	fb08 e316 	mls	r3, r8, r6, lr
 332:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
 336:	fb06 f107 	mul.w	r1, r6, r7
 33a:	4299      	cmp	r1, r3
 33c:	d90a      	bls.n	354 <__udivmoddi4+0x64>
 33e:	eb1c 0303 	adds.w	r3, ip, r3
 342:	f106 30ff 	add.w	r0, r6, #4294967295
 346:	f080 811f 	bcs.w	588 <STACK_SIZE+0x188>
 34a:	4299      	cmp	r1, r3
 34c:	f240 811c 	bls.w	588 <STACK_SIZE+0x188>
 350:	3e02      	subs	r6, #2
 352:	4463      	add	r3, ip
 354:	1a5b      	subs	r3, r3, r1
 356:	b2a4      	uxth	r4, r4
 358:	fbb3 f0f8 	udiv	r0, r3, r8
 35c:	fb08 3310 	mls	r3, r8, r0, r3
 360:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 364:	fb00 f707 	mul.w	r7, r0, r7
 368:	42a7      	cmp	r7, r4
 36a:	d90a      	bls.n	382 <__udivmoddi4+0x92>
 36c:	eb1c 0404 	adds.w	r4, ip, r4
 370:	f100 33ff 	add.w	r3, r0, #4294967295
 374:	f080 810a 	bcs.w	58c <STACK_SIZE+0x18c>
 378:	42a7      	cmp	r7, r4
 37a:	f240 8107 	bls.w	58c <STACK_SIZE+0x18c>
 37e:	4464      	add	r4, ip
 380:	3802      	subs	r0, #2
 382:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
 386:	1be4      	subs	r4, r4, r7
 388:	2600      	movs	r6, #0
 38a:	b11d      	cbz	r5, 394 <__udivmoddi4+0xa4>
 38c:	40d4      	lsrs	r4, r2
 38e:	2300      	movs	r3, #0
 390:	e9c5 4300 	strd	r4, r3, [r5]
 394:	4631      	mov	r1, r6
 396:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 39a:	428b      	cmp	r3, r1
 39c:	d909      	bls.n	3b2 <__udivmoddi4+0xc2>
 39e:	2d00      	cmp	r5, #0
 3a0:	f000 80ef 	beq.w	582 <STACK_SIZE+0x182>
 3a4:	2600      	movs	r6, #0
 3a6:	e9c5 0100 	strd	r0, r1, [r5]
 3aa:	4630      	mov	r0, r6
 3ac:	4631      	mov	r1, r6
 3ae:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 3b2:	fab3 f683 	clz	r6, r3
 3b6:	2e00      	cmp	r6, #0
 3b8:	d14a      	bne.n	450 <STACK_SIZE+0x50>
 3ba:	428b      	cmp	r3, r1
 3bc:	d302      	bcc.n	3c4 <__udivmoddi4+0xd4>
 3be:	4282      	cmp	r2, r0
 3c0:	f200 80f9 	bhi.w	5b6 <STACK_SIZE+0x1b6>
 3c4:	1a84      	subs	r4, r0, r2
 3c6:	eb61 0303 	sbc.w	r3, r1, r3
 3ca:	2001      	movs	r0, #1
 3cc:	469e      	mov	lr, r3
 3ce:	2d00      	cmp	r5, #0
 3d0:	d0e0      	beq.n	394 <__udivmoddi4+0xa4>
 3d2:	e9c5 4e00 	strd	r4, lr, [r5]
 3d6:	e7dd      	b.n	394 <__udivmoddi4+0xa4>
 3d8:	b902      	cbnz	r2, 3dc <__udivmoddi4+0xec>
 3da:	deff      	udf	#255	@ 0xff
 3dc:	fab2 f282 	clz	r2, r2
 3e0:	2a00      	cmp	r2, #0
 3e2:	f040 8092 	bne.w	50a <STACK_SIZE+0x10a>
 3e6:	eba1 010c 	sub.w	r1, r1, ip
 3ea:	ea4f 471c 	mov.w	r7, ip, lsr #16
 3ee:	fa1f fe8c 	uxth.w	lr, ip
 3f2:	2601      	movs	r6, #1
 3f4:	0c20      	lsrs	r0, r4, #16
 3f6:	fbb1 f3f7 	udiv	r3, r1, r7
 3fa:	fb07 1113 	mls	r1, r7, r3, r1
 3fe:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
 402:	fb0e f003 	mul.w	r0, lr, r3
 406:	4288      	cmp	r0, r1
 408:	d908      	bls.n	41c <STACK_SIZE+0x1c>
 40a:	eb1c 0101 	adds.w	r1, ip, r1
 40e:	f103 38ff 	add.w	r8, r3, #4294967295
 412:	d202      	bcs.n	41a <STACK_SIZE+0x1a>
 414:	4288      	cmp	r0, r1
 416:	f200 80cb 	bhi.w	5b0 <STACK_SIZE+0x1b0>
 41a:	4643      	mov	r3, r8
 41c:	1a09      	subs	r1, r1, r0
 41e:	b2a4      	uxth	r4, r4
 420:	fbb1 f0f7 	udiv	r0, r1, r7
 424:	fb07 1110 	mls	r1, r7, r0, r1
 428:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
 42c:	fb0e fe00 	mul.w	lr, lr, r0
 430:	45a6      	cmp	lr, r4
 432:	d908      	bls.n	446 <STACK_SIZE+0x46>
 434:	eb1c 0404 	adds.w	r4, ip, r4
 438:	f100 31ff 	add.w	r1, r0, #4294967295
 43c:	d202      	bcs.n	444 <STACK_SIZE+0x44>
 43e:	45a6      	cmp	lr, r4
 440:	f200 80bb 	bhi.w	5ba <STACK_SIZE+0x1ba>
 444:	4608      	mov	r0, r1
 446:	eba4 040e 	sub.w	r4, r4, lr
 44a:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
 44e:	e79c      	b.n	38a <__udivmoddi4+0x9a>
 450:	f1c6 0720 	rsb	r7, r6, #32
 454:	40b3      	lsls	r3, r6
 456:	fa22 fc07 	lsr.w	ip, r2, r7
 45a:	ea4c 0c03 	orr.w	ip, ip, r3
 45e:	fa20 f407 	lsr.w	r4, r0, r7
 462:	fa01 f306 	lsl.w	r3, r1, r6
 466:	431c      	orrs	r4, r3
 468:	40f9      	lsrs	r1, r7
 46a:	ea4f 491c 	mov.w	r9, ip, lsr #16
 46e:	fa00 f306 	lsl.w	r3, r0, r6
 472:	fbb1 f8f9 	udiv	r8, r1, r9
 476:	0c20      	lsrs	r0, r4, #16
 478:	fa1f fe8c 	uxth.w	lr, ip
 47c:	fb09 1118 	mls	r1, r9, r8, r1
 480:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
 484:	fb08 f00e 	mul.w	r0, r8, lr
 488:	4288      	cmp	r0, r1
 48a:	fa02 f206 	lsl.w	r2, r2, r6
 48e:	d90b      	bls.n	4a8 <STACK_SIZE+0xa8>
 490:	eb1c 0101 	adds.w	r1, ip, r1
 494:	f108 3aff 	add.w	sl, r8, #4294967295
 498:	f080 8088 	bcs.w	5ac <STACK_SIZE+0x1ac>
 49c:	4288      	cmp	r0, r1
 49e:	f240 8085 	bls.w	5ac <STACK_SIZE+0x1ac>
 4a2:	f1a8 0802 	sub.w	r8, r8, #2
 4a6:	4461      	add	r1, ip
 4a8:	1a09      	subs	r1, r1, r0
 4aa:	b2a4      	uxth	r4, r4
 4ac:	fbb1 f0f9 	udiv	r0, r1, r9
 4b0:	fb09 1110 	mls	r1, r9, r0, r1
 4b4:	ea44 4101 	orr.w	r1, r4, r1, lsl #16
 4b8:	fb00 fe0e 	mul.w	lr, r0, lr
 4bc:	458e      	cmp	lr, r1
 4be:	d908      	bls.n	4d2 <STACK_SIZE+0xd2>
 4c0:	eb1c 0101 	adds.w	r1, ip, r1
 4c4:	f100 34ff 	add.w	r4, r0, #4294967295
 4c8:	d26c      	bcs.n	5a4 <STACK_SIZE+0x1a4>
 4ca:	458e      	cmp	lr, r1
 4cc:	d96a      	bls.n	5a4 <STACK_SIZE+0x1a4>
 4ce:	3802      	subs	r0, #2
 4d0:	4461      	add	r1, ip
 4d2:	ea40 4008 	orr.w	r0, r0, r8, lsl #16
 4d6:	fba0 9402 	umull	r9, r4, r0, r2
 4da:	eba1 010e 	sub.w	r1, r1, lr
 4de:	42a1      	cmp	r1, r4
 4e0:	46c8      	mov	r8, r9
 4e2:	46a6      	mov	lr, r4
 4e4:	d356      	bcc.n	594 <STACK_SIZE+0x194>
 4e6:	d053      	beq.n	590 <STACK_SIZE+0x190>
 4e8:	b15d      	cbz	r5, 502 <STACK_SIZE+0x102>
 4ea:	ebb3 0208 	subs.w	r2, r3, r8
 4ee:	eb61 010e 	sbc.w	r1, r1, lr
 4f2:	fa01 f707 	lsl.w	r7, r1, r7
 4f6:	fa22 f306 	lsr.w	r3, r2, r6
 4fa:	40f1      	lsrs	r1, r6
 4fc:	431f      	orrs	r7, r3
 4fe:	e9c5 7100 	strd	r7, r1, [r5]
 502:	2600      	movs	r6, #0
 504:	4631      	mov	r1, r6
 506:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 50a:	f1c2 0320 	rsb	r3, r2, #32
 50e:	40d8      	lsrs	r0, r3
 510:	fa0c fc02 	lsl.w	ip, ip, r2
 514:	fa21 f303 	lsr.w	r3, r1, r3
 518:	4091      	lsls	r1, r2
 51a:	4301      	orrs	r1, r0
 51c:	ea4f 471c 	mov.w	r7, ip, lsr #16
 520:	fa1f fe8c 	uxth.w	lr, ip
 524:	fbb3 f0f7 	udiv	r0, r3, r7
 528:	fb07 3610 	mls	r6, r7, r0, r3
 52c:	0c0b      	lsrs	r3, r1, #16
 52e:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 532:	fb00 f60e 	mul.w	r6, r0, lr
 536:	429e      	cmp	r6, r3
 538:	fa04 f402 	lsl.w	r4, r4, r2
 53c:	d908      	bls.n	550 <STACK_SIZE+0x150>
 53e:	eb1c 0303 	adds.w	r3, ip, r3
 542:	f100 38ff 	add.w	r8, r0, #4294967295
 546:	d22f      	bcs.n	5a8 <STACK_SIZE+0x1a8>
 548:	429e      	cmp	r6, r3
 54a:	d92d      	bls.n	5a8 <STACK_SIZE+0x1a8>
 54c:	3802      	subs	r0, #2
 54e:	4463      	add	r3, ip
 550:	1b9b      	subs	r3, r3, r6
 552:	b289      	uxth	r1, r1
 554:	fbb3 f6f7 	udiv	r6, r3, r7
 558:	fb07 3316 	mls	r3, r7, r6, r3
 55c:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 560:	fb06 f30e 	mul.w	r3, r6, lr
 564:	428b      	cmp	r3, r1
 566:	d908      	bls.n	57a <STACK_SIZE+0x17a>
 568:	eb1c 0101 	adds.w	r1, ip, r1
 56c:	f106 38ff 	add.w	r8, r6, #4294967295
 570:	d216      	bcs.n	5a0 <STACK_SIZE+0x1a0>
 572:	428b      	cmp	r3, r1
 574:	d914      	bls.n	5a0 <STACK_SIZE+0x1a0>
 576:	3e02      	subs	r6, #2
 578:	4461      	add	r1, ip
 57a:	1ac9      	subs	r1, r1, r3
 57c:	ea46 4600 	orr.w	r6, r6, r0, lsl #16
 580:	e738      	b.n	3f4 <__udivmoddi4+0x104>
 582:	462e      	mov	r6, r5
 584:	4628      	mov	r0, r5
 586:	e705      	b.n	394 <__udivmoddi4+0xa4>
 588:	4606      	mov	r6, r0
 58a:	e6e3      	b.n	354 <__udivmoddi4+0x64>
 58c:	4618      	mov	r0, r3
 58e:	e6f8      	b.n	382 <__udivmoddi4+0x92>
 590:	454b      	cmp	r3, r9
 592:	d2a9      	bcs.n	4e8 <STACK_SIZE+0xe8>
 594:	ebb9 0802 	subs.w	r8, r9, r2
 598:	eb64 0e0c 	sbc.w	lr, r4, ip
 59c:	3801      	subs	r0, #1
 59e:	e7a3      	b.n	4e8 <STACK_SIZE+0xe8>
 5a0:	4646      	mov	r6, r8
 5a2:	e7ea      	b.n	57a <STACK_SIZE+0x17a>
 5a4:	4620      	mov	r0, r4
 5a6:	e794      	b.n	4d2 <STACK_SIZE+0xd2>
 5a8:	4640      	mov	r0, r8
 5aa:	e7d1      	b.n	550 <STACK_SIZE+0x150>
 5ac:	46d0      	mov	r8, sl
 5ae:	e77b      	b.n	4a8 <STACK_SIZE+0xa8>
 5b0:	3b02      	subs	r3, #2
 5b2:	4461      	add	r1, ip
 5b4:	e732      	b.n	41c <STACK_SIZE+0x1c>
 5b6:	4630      	mov	r0, r6
 5b8:	e709      	b.n	3ce <__udivmoddi4+0xde>
 5ba:	4464      	add	r4, ip
 5bc:	3802      	subs	r0, #2
 5be:	e742      	b.n	446 <STACK_SIZE+0x46>

000005c0 <__aeabi_idiv0>:
 5c0:	4770      	bx	lr
 5c2:	bf00      	nop

000005c4 <main>:
 5c4:	b530      	push	{r4, r5, lr}
 5c6:	b091      	sub	sp, #68	@ 0x44
 5c8:	2103      	movs	r1, #3
 5ca:	a802      	add	r0, sp, #8
 5cc:	f000 f98b 	bl	8e6 <mpmutex_init>
 5d0:	b118      	cbz	r0, 5da <main+0x16>
 5d2:	f06f 0004 	mvn.w	r0, #4
 5d6:	f000 f864 	bl	6a2 <wk_exit>
 5da:	2200      	movs	r2, #0
 5dc:	2102      	movs	r1, #2
 5de:	a806      	add	r0, sp, #24
 5e0:	f000 f894 	bl	70c <mpmq_init>
 5e4:	b118      	cbz	r0, 5ee <main+0x2a>
 5e6:	f06f 0004 	mvn.w	r0, #4
 5ea:	f000 f85a 	bl	6a2 <wk_exit>
 5ee:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 5f2:	2101      	movs	r1, #1
 5f4:	a80a      	add	r0, sp, #40	@ 0x28
 5f6:	f000 f9dc 	bl	9b2 <mpshm_init>
 5fa:	b118      	cbz	r0, 604 <main+0x40>
 5fc:	f06f 0004 	mvn.w	r0, #4
 600:	f000 f84f 	bl	6a2 <wk_exit>
 604:	2100      	movs	r1, #0
 606:	a80a      	add	r0, sp, #40	@ 0x28
 608:	f000 fa2c 	bl	a64 <mpshm_attach>
 60c:	4604      	mov	r4, r0
 60e:	b918      	cbnz	r0, 618 <main+0x54>
 610:	f06f 0004 	mvn.w	r0, #4
 614:	f000 f845 	bl	6a2 <wk_exit>
 618:	a901      	add	r1, sp, #4
 61a:	a806      	add	r0, sp, #24
 61c:	f000 f914 	bl	848 <mpmq_receive>
 620:	2801      	cmp	r0, #1
 622:	d003      	beq.n	62c <main+0x68>
 624:	f06f 0004 	mvn.w	r0, #4
 628:	f000 f83b 	bl	6a2 <wk_exit>
 62c:	a802      	add	r0, sp, #8
 62e:	f000 f9a9 	bl	984 <mpmutex_lock>
 632:	9b01      	ldr	r3, [sp, #4]
 634:	eb04 02c3 	add.w	r2, r4, r3, lsl #3
 638:	a802      	add	r0, sp, #8
 63a:	f854 4033 	ldr.w	r4, [r4, r3, lsl #3]
 63e:	6855      	ldr	r5, [r2, #4]
 640:	f000 f9a9 	bl	996 <mpmutex_unlock>
 644:	4425      	add	r5, r4
 646:	42a5      	cmp	r5, r4
 648:	d215      	bcs.n	676 <main+0xb2>
 64a:	a802      	add	r0, sp, #8
 64c:	f000 f99a 	bl	984 <mpmutex_lock>
 650:	a802      	add	r0, sp, #8
 652:	f000 f9a0 	bl	996 <mpmutex_unlock>
 656:	a80a      	add	r0, sp, #40	@ 0x28
 658:	f000 fa6e 	bl	b38 <mpshm_detach>
 65c:	9a01      	ldr	r2, [sp, #4]
 65e:	2101      	movs	r1, #1
 660:	a806      	add	r0, sp, #24
 662:	f000 f883 	bl	76c <mpmq_send>
 666:	b118      	cbz	r0, 670 <main+0xac>
 668:	f06f 0004 	mvn.w	r0, #4
 66c:	f000 f819 	bl	6a2 <wk_exit>
 670:	2000      	movs	r0, #0
 672:	b011      	add	sp, #68	@ 0x44
 674:	bd30      	pop	{r4, r5, pc}
 676:	bf00      	nop
 678:	3401      	adds	r4, #1
 67a:	e7e4      	b.n	646 <main+0x82>

0000067c <wk_memset>:
 67c:	b12a      	cbz	r2, 68a <wk_memset+0xe>
 67e:	1882      	adds	r2, r0, r2
 680:	4603      	mov	r3, r0
 682:	f803 1b01 	strb.w	r1, [r3], #1
 686:	429a      	cmp	r2, r3
 688:	d1fb      	bne.n	682 <wk_memset+0x6>
 68a:	4770      	bx	lr

0000068c <wk_memcpy>:
 68c:	4694      	mov	ip, r2
 68e:	b13a      	cbz	r2, 6a0 <wk_memcpy+0x14>
 690:	1e43      	subs	r3, r0, #1
 692:	448c      	add	ip, r1
 694:	f811 2b01 	ldrb.w	r2, [r1], #1
 698:	f803 2f01 	strb.w	r2, [r3, #1]!
 69c:	4561      	cmp	r1, ip
 69e:	d1f9      	bne.n	694 <wk_memcpy+0x8>
 6a0:	4770      	bx	lr

000006a2 <wk_exit>:
 6a2:	b508      	push	{r3, lr}
 6a4:	4602      	mov	r2, r0
 6a6:	2102      	movs	r1, #2
 6a8:	4608      	mov	r0, r1
 6aa:	f000 fae1 	bl	c70 <_signal>
 6ae:	bf30      	wfi
 6b0:	e7fd      	b.n	6ae <wk_exit+0xc>

000006b2 <wk_udelay>:
 6b2:	b510      	push	{r4, lr}
 6b4:	4601      	mov	r1, r0
 6b6:	2001      	movs	r0, #1
 6b8:	f000 fb7e 	bl	db8 <timer_settimeout>
 6bc:	b100      	cbz	r0, 6c0 <wk_udelay+0xe>
 6be:	bd10      	pop	{r4, pc}
 6c0:	2001      	movs	r0, #1
 6c2:	f000 fb53 	bl	d6c <timer_start>
 6c6:	2401      	movs	r4, #1
 6c8:	4620      	mov	r0, r4
 6ca:	f000 fba3 	bl	e14 <timer_getvalue>
 6ce:	2800      	cmp	r0, #0
 6d0:	d1fa      	bne.n	6c8 <wk_udelay+0x16>
 6d2:	2001      	movs	r0, #1
 6d4:	f000 fb5e 	bl	d94 <timer_stop>
 6d8:	e7f1      	b.n	6be <wk_udelay+0xc>
	...

000006dc <asmp_findmpbindobj>:
 6dc:	b410      	push	{r4}
 6de:	4602      	mov	r2, r0
 6e0:	4809      	ldr	r0, [pc, #36]	@ (708 <asmp_findmpbindobj+0x2c>)
 6e2:	f100 0460 	add.w	r4, r0, #96	@ 0x60
 6e6:	e002      	b.n	6ee <asmp_findmpbindobj+0x12>
 6e8:	300c      	adds	r0, #12
 6ea:	42a0      	cmp	r0, r4
 6ec:	d007      	beq.n	6fe <asmp_findmpbindobj+0x22>
 6ee:	f9b0 3004 	ldrsh.w	r3, [r0, #4]
 6f2:	4293      	cmp	r3, r2
 6f4:	d1f8      	bne.n	6e8 <asmp_findmpbindobj+0xc>
 6f6:	6803      	ldr	r3, [r0, #0]
 6f8:	428b      	cmp	r3, r1
 6fa:	d1f5      	bne.n	6e8 <asmp_findmpbindobj+0xc>
 6fc:	e000      	b.n	700 <asmp_findmpbindobj+0x24>
 6fe:	2000      	movs	r0, #0
 700:	f85d 4b04 	ldr.w	r4, [sp], #4
 704:	4770      	bx	lr
 706:	bf00      	nop
 708:	00000f60 	.word	0x00000f60

0000070c <mpmq_init>:
 70c:	b308      	cbz	r0, 752 <mpmq_init+0x46>
 70e:	b570      	push	{r4, r5, r6, lr}
 710:	460d      	mov	r5, r1
 712:	4616      	mov	r6, r2
 714:	4604      	mov	r4, r0
 716:	2210      	movs	r2, #16
 718:	2100      	movs	r1, #0
 71a:	f7ff ffaf 	bl	67c <wk_memset>
 71e:	f642 53c6 	movw	r3, #11718	@ 0x2dc6
 722:	8023      	strh	r3, [r4, #0]
 724:	6065      	str	r5, [r4, #4]
 726:	b945      	cbnz	r5, 73a <mpmq_init+0x2e>
 728:	8126      	strh	r6, [r4, #8]
 72a:	f9b4 5008 	ldrsh.w	r5, [r4, #8]
 72e:	f000 fab1 	bl	c94 <asmp_getglobalcpuid>
 732:	4285      	cmp	r5, r0
 734:	d009      	beq.n	74a <mpmq_init+0x3e>
 736:	2000      	movs	r0, #0
 738:	bd70      	pop	{r4, r5, r6, pc}
 73a:	4629      	mov	r1, r5
 73c:	4618      	mov	r0, r3
 73e:	f7ff ffcd 	bl	6dc <asmp_findmpbindobj>
 742:	b148      	cbz	r0, 758 <mpmq_init+0x4c>
 744:	6883      	ldr	r3, [r0, #8]
 746:	8123      	strh	r3, [r4, #8]
 748:	e7ef      	b.n	72a <mpmq_init+0x1e>
 74a:	2302      	movs	r3, #2
 74c:	8123      	strh	r3, [r4, #8]
 74e:	2000      	movs	r0, #0
 750:	e7f2      	b.n	738 <mpmq_init+0x2c>
 752:	f06f 0015 	mvn.w	r0, #21
 756:	4770      	bx	lr
 758:	f06f 0001 	mvn.w	r0, #1
 75c:	e7ec      	b.n	738 <mpmq_init+0x2c>

0000075e <mpmq_destroy>:
 75e:	b508      	push	{r3, lr}
 760:	2210      	movs	r2, #16
 762:	2100      	movs	r1, #0
 764:	f7ff ff8a 	bl	67c <wk_memset>
 768:	2000      	movs	r0, #0
 76a:	bd08      	pop	{r3, pc}

0000076c <mpmq_send>:
 76c:	b500      	push	{lr}
 76e:	b083      	sub	sp, #12
 770:	f89d 3003 	ldrb.w	r3, [sp, #3]
 774:	8900      	ldrh	r0, [r0, #8]
 776:	f360 1307 	bfi	r3, r0, #4, #4
 77a:	f88d 1002 	strb.w	r1, [sp, #2]
 77e:	2100      	movs	r1, #0
 780:	f8ad 1000 	strh.w	r1, [sp]
 784:	f361 0303 	bfi	r3, r1, #0, #4
 788:	f88d 3003 	strb.w	r3, [sp, #3]
 78c:	9201      	str	r2, [sp, #4]
 78e:	4668      	mov	r0, sp
 790:	f000 fa1a 	bl	bc8 <cpufifo_push>
 794:	2800      	cmp	r0, #0
 796:	d1fa      	bne.n	78e <mpmq_send+0x22>
 798:	b003      	add	sp, #12
 79a:	f85d fb04 	ldr.w	pc, [sp], #4

0000079e <mpmq_timedsend>:
 79e:	b530      	push	{r4, r5, lr}
 7a0:	b083      	sub	sp, #12
 7a2:	b363      	cbz	r3, 7fe <mpmq_timedsend+0x60>
 7a4:	461c      	mov	r4, r3
 7a6:	f89d 3003 	ldrb.w	r3, [sp, #3]
 7aa:	8900      	ldrh	r0, [r0, #8]
 7ac:	f360 1307 	bfi	r3, r0, #4, #4
 7b0:	f88d 1002 	strb.w	r1, [sp, #2]
 7b4:	2000      	movs	r0, #0
 7b6:	f8ad 0000 	strh.w	r0, [sp]
 7ba:	f360 0303 	bfi	r3, r0, #0, #4
 7be:	f88d 3003 	strb.w	r3, [sp, #3]
 7c2:	9201      	str	r2, [sp, #4]
 7c4:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
 7c8:	fb04 f101 	mul.w	r1, r4, r1
 7cc:	2001      	movs	r0, #1
 7ce:	f000 faf3 	bl	db8 <timer_settimeout>
 7d2:	4604      	mov	r4, r0
 7d4:	b9b0      	cbnz	r0, 804 <mpmq_timedsend+0x66>
 7d6:	2001      	movs	r0, #1
 7d8:	f000 fac8 	bl	d6c <timer_start>
 7dc:	2501      	movs	r5, #1
 7de:	4668      	mov	r0, sp
 7e0:	f000 f9f2 	bl	bc8 <cpufifo_push>
 7e4:	4604      	mov	r4, r0
 7e6:	4628      	mov	r0, r5
 7e8:	f000 fb14 	bl	e14 <timer_getvalue>
 7ec:	b16c      	cbz	r4, 80a <mpmq_timedsend+0x6c>
 7ee:	2800      	cmp	r0, #0
 7f0:	d1f5      	bne.n	7de <mpmq_timedsend+0x40>
 7f2:	2001      	movs	r0, #1
 7f4:	f000 face 	bl	d94 <timer_stop>
 7f8:	f06f 0473 	mvn.w	r4, #115	@ 0x73
 7fc:	e002      	b.n	804 <mpmq_timedsend+0x66>
 7fe:	f7ff ffb5 	bl	76c <mpmq_send>
 802:	4604      	mov	r4, r0
 804:	4620      	mov	r0, r4
 806:	b003      	add	sp, #12
 808:	bd30      	pop	{r4, r5, pc}
 80a:	2001      	movs	r0, #1
 80c:	f000 fac2 	bl	d94 <timer_stop>
 810:	e7f8      	b.n	804 <mpmq_timedsend+0x66>

00000812 <mpmq_trysend>:
 812:	b500      	push	{lr}
 814:	b083      	sub	sp, #12
 816:	f89d 3003 	ldrb.w	r3, [sp, #3]
 81a:	8900      	ldrh	r0, [r0, #8]
 81c:	f360 1307 	bfi	r3, r0, #4, #4
 820:	f88d 1002 	strb.w	r1, [sp, #2]
 824:	2100      	movs	r1, #0
 826:	f8ad 1000 	strh.w	r1, [sp]
 82a:	f361 0303 	bfi	r3, r1, #0, #4
 82e:	f88d 3003 	strb.w	r3, [sp, #3]
 832:	9201      	str	r2, [sp, #4]
 834:	4668      	mov	r0, sp
 836:	f000 f9c7 	bl	bc8 <cpufifo_push>
 83a:	2800      	cmp	r0, #0
 83c:	bf18      	it	ne
 83e:	f06f 000a 	mvnne.w	r0, #10
 842:	b003      	add	sp, #12
 844:	f85d fb04 	ldr.w	pc, [sp], #4

00000848 <mpmq_receive>:
 848:	b530      	push	{r4, r5, lr}
 84a:	b083      	sub	sp, #12
 84c:	460d      	mov	r5, r1
 84e:	2400      	movs	r4, #0
 850:	4669      	mov	r1, sp
 852:	4620      	mov	r0, r4
 854:	f000 f9ce 	bl	bf4 <cpufifo_pull>
 858:	2800      	cmp	r0, #0
 85a:	d1f9      	bne.n	850 <mpmq_receive+0x8>
 85c:	9b01      	ldr	r3, [sp, #4]
 85e:	602b      	str	r3, [r5, #0]
 860:	f89d 0002 	ldrb.w	r0, [sp, #2]
 864:	b003      	add	sp, #12
 866:	bd30      	pop	{r4, r5, pc}

00000868 <mpmq_timedreceive>:
 868:	b5f0      	push	{r4, r5, r6, r7, lr}
 86a:	b083      	sub	sp, #12
 86c:	460d      	mov	r5, r1
 86e:	b1ea      	cbz	r2, 8ac <mpmq_timedreceive+0x44>
 870:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
 874:	fb02 f101 	mul.w	r1, r2, r1
 878:	2001      	movs	r0, #1
 87a:	f000 fa9d 	bl	db8 <timer_settimeout>
 87e:	b9b8      	cbnz	r0, 8b0 <mpmq_timedreceive+0x48>
 880:	2001      	movs	r0, #1
 882:	f000 fa73 	bl	d6c <timer_start>
 886:	2700      	movs	r7, #0
 888:	2601      	movs	r6, #1
 88a:	4669      	mov	r1, sp
 88c:	4638      	mov	r0, r7
 88e:	f000 f9b1 	bl	bf4 <cpufifo_pull>
 892:	4604      	mov	r4, r0
 894:	4630      	mov	r0, r6
 896:	f000 fabd 	bl	e14 <timer_getvalue>
 89a:	b15c      	cbz	r4, 8b4 <mpmq_timedreceive+0x4c>
 89c:	2800      	cmp	r0, #0
 89e:	d1f4      	bne.n	88a <mpmq_timedreceive+0x22>
 8a0:	2001      	movs	r0, #1
 8a2:	f000 fa77 	bl	d94 <timer_stop>
 8a6:	f06f 0073 	mvn.w	r0, #115	@ 0x73
 8aa:	e001      	b.n	8b0 <mpmq_timedreceive+0x48>
 8ac:	f7ff ffcc 	bl	848 <mpmq_receive>
 8b0:	b003      	add	sp, #12
 8b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8b4:	2001      	movs	r0, #1
 8b6:	f000 fa6d 	bl	d94 <timer_stop>
 8ba:	9b01      	ldr	r3, [sp, #4]
 8bc:	602b      	str	r3, [r5, #0]
 8be:	f89d 0002 	ldrb.w	r0, [sp, #2]
 8c2:	e7f5      	b.n	8b0 <mpmq_timedreceive+0x48>

000008c4 <mpmq_tryreceive>:
 8c4:	b510      	push	{r4, lr}
 8c6:	b082      	sub	sp, #8
 8c8:	460c      	mov	r4, r1
 8ca:	4669      	mov	r1, sp
 8cc:	2000      	movs	r0, #0
 8ce:	f000 f991 	bl	bf4 <cpufifo_pull>
 8d2:	b928      	cbnz	r0, 8e0 <mpmq_tryreceive+0x1c>
 8d4:	9b01      	ldr	r3, [sp, #4]
 8d6:	6023      	str	r3, [r4, #0]
 8d8:	f89d 0002 	ldrb.w	r0, [sp, #2]
 8dc:	b002      	add	sp, #8
 8de:	bd10      	pop	{r4, pc}
 8e0:	f06f 000a 	mvn.w	r0, #10
 8e4:	e7fa      	b.n	8dc <mpmq_tryreceive+0x18>

000008e6 <mpmutex_init>:
 8e6:	b1a8      	cbz	r0, 914 <mpmutex_init+0x2e>
 8e8:	b538      	push	{r3, r4, r5, lr}
 8ea:	460c      	mov	r4, r1
 8ec:	4605      	mov	r5, r0
 8ee:	b1a1      	cbz	r1, 91a <mpmutex_init+0x34>
 8f0:	2210      	movs	r2, #16
 8f2:	2100      	movs	r1, #0
 8f4:	f7ff fec2 	bl	67c <wk_memset>
 8f8:	4621      	mov	r1, r4
 8fa:	f240 6086 	movw	r0, #1670	@ 0x686
 8fe:	f7ff feed 	bl	6dc <asmp_findmpbindobj>
 902:	b168      	cbz	r0, 920 <mpmutex_init+0x3a>
 904:	f240 6286 	movw	r2, #1670	@ 0x686
 908:	802a      	strh	r2, [r5, #0]
 90a:	606c      	str	r4, [r5, #4]
 90c:	6883      	ldr	r3, [r0, #8]
 90e:	732b      	strb	r3, [r5, #12]
 910:	2000      	movs	r0, #0
 912:	bd38      	pop	{r3, r4, r5, pc}
 914:	f06f 0015 	mvn.w	r0, #21
 918:	4770      	bx	lr
 91a:	f06f 0015 	mvn.w	r0, #21
 91e:	e7f8      	b.n	912 <mpmutex_init+0x2c>
 920:	f06f 0001 	mvn.w	r0, #1
 924:	e7f5      	b.n	912 <mpmutex_init+0x2c>

00000926 <mpmutex_destroy>:
 926:	b118      	cbz	r0, 930 <mpmutex_destroy+0xa>
 928:	22ff      	movs	r2, #255	@ 0xff
 92a:	7302      	strb	r2, [r0, #12]
 92c:	2000      	movs	r0, #0
 92e:	4770      	bx	lr
 930:	f06f 0015 	mvn.w	r0, #21
 934:	4770      	bx	lr

00000936 <mpmutex_trylock>:
 936:	b1e0      	cbz	r0, 972 <mpmutex_trylock+0x3c>
 938:	b510      	push	{r4, lr}
 93a:	f990 400c 	ldrsb.w	r4, [r0, #12]
 93e:	f000 f9a9 	bl	c94 <asmp_getglobalcpuid>
 942:	f104 638c 	add.w	r3, r4, #73400320	@ 0x4600000
 946:	f503 6348 	add.w	r3, r3, #3200	@ 0xc80
 94a:	011b      	lsls	r3, r3, #4
 94c:	685a      	ldr	r2, [r3, #4]
 94e:	f012 0f0f 	tst.w	r2, #15
 952:	d111      	bne.n	978 <mpmutex_trylock+0x42>
 954:	2201      	movs	r2, #1
 956:	601a      	str	r2, [r3, #0]
 958:	685b      	ldr	r3, [r3, #4]
 95a:	f003 020f 	and.w	r2, r3, #15
 95e:	2a01      	cmp	r2, #1
 960:	d10d      	bne.n	97e <mpmutex_trylock+0x48>
 962:	f3c3 4304 	ubfx	r3, r3, #16, #5
 966:	4283      	cmp	r3, r0
 968:	bf14      	ite	ne
 96a:	f06f 000f 	mvnne.w	r0, #15
 96e:	2000      	moveq	r0, #0
 970:	bd10      	pop	{r4, pc}
 972:	f06f 0015 	mvn.w	r0, #21
 976:	4770      	bx	lr
 978:	f06f 000f 	mvn.w	r0, #15
 97c:	e7f8      	b.n	970 <mpmutex_trylock+0x3a>
 97e:	f06f 000f 	mvn.w	r0, #15
 982:	e7f5      	b.n	970 <mpmutex_trylock+0x3a>

00000984 <mpmutex_lock>:
 984:	b510      	push	{r4, lr}
 986:	4604      	mov	r4, r0
 988:	4620      	mov	r0, r4
 98a:	f7ff ffd4 	bl	936 <mpmutex_trylock>
 98e:	f110 0f10 	cmn.w	r0, #16
 992:	d0f9      	beq.n	988 <mpmutex_lock+0x4>
 994:	bd10      	pop	{r4, pc}

00000996 <mpmutex_unlock>:
 996:	b148      	cbz	r0, 9ac <mpmutex_unlock+0x16>
 998:	f990 300c 	ldrsb.w	r3, [r0, #12]
 99c:	f103 638c 	add.w	r3, r3, #73400320	@ 0x4600000
 9a0:	f503 6348 	add.w	r3, r3, #3200	@ 0xc80
 9a4:	011b      	lsls	r3, r3, #4
 9a6:	2000      	movs	r0, #0
 9a8:	6018      	str	r0, [r3, #0]
 9aa:	4770      	bx	lr
 9ac:	f06f 0015 	mvn.w	r0, #21
 9b0:	4770      	bx	lr

000009b2 <mpshm_init>:
 9b2:	b1e0      	cbz	r0, 9ee <mpshm_init+0x3c>
 9b4:	b570      	push	{r4, r5, r6, lr}
 9b6:	460e      	mov	r6, r1
 9b8:	4614      	mov	r4, r2
 9ba:	4605      	mov	r5, r0
 9bc:	2218      	movs	r2, #24
 9be:	2100      	movs	r1, #0
 9c0:	f7ff fe5c 	bl	67c <wk_memset>
 9c4:	4631      	mov	r1, r6
 9c6:	f244 5088 	movw	r0, #17800	@ 0x4588
 9ca:	f7ff fe87 	bl	6dc <asmp_findmpbindobj>
 9ce:	b188      	cbz	r0, 9f4 <mpshm_init+0x42>
 9d0:	f244 5288 	movw	r2, #17800	@ 0x4588
 9d4:	802a      	strh	r2, [r5, #0]
 9d6:	606e      	str	r6, [r5, #4]
 9d8:	6883      	ldr	r3, [r0, #8]
 9da:	60eb      	str	r3, [r5, #12]
 9dc:	f504 32ff 	add.w	r2, r4, #130560	@ 0x1fe00
 9e0:	f202 12ff 	addw	r2, r2, #511	@ 0x1ff
 9e4:	0c52      	lsrs	r2, r2, #17
 9e6:	0452      	lsls	r2, r2, #17
 9e8:	612a      	str	r2, [r5, #16]
 9ea:	2000      	movs	r0, #0
 9ec:	bd70      	pop	{r4, r5, r6, pc}
 9ee:	f06f 0015 	mvn.w	r0, #21
 9f2:	4770      	bx	lr
 9f4:	f06f 0001 	mvn.w	r0, #1
 9f8:	e7f8      	b.n	9ec <mpshm_init+0x3a>

000009fa <mpshm_destroy>:
 9fa:	b130      	cbz	r0, a0a <mpshm_destroy+0x10>
 9fc:	b508      	push	{r3, lr}
 9fe:	2218      	movs	r2, #24
 a00:	2100      	movs	r1, #0
 a02:	f7ff fe3b 	bl	67c <wk_memset>
 a06:	2000      	movs	r0, #0
 a08:	bd08      	pop	{r3, pc}
 a0a:	f06f 0015 	mvn.w	r0, #21
 a0e:	4770      	bx	lr

00000a10 <mpshm_control>:
 a10:	f06f 0057 	mvn.w	r0, #87	@ 0x57
 a14:	4770      	bx	lr
	...

00000a18 <mpshm_virt2phys>:
 a18:	f64f 72f0 	movw	r2, #65520	@ 0xfff0
 a1c:	ea12 4211 	ands.w	r2, r2, r1, lsr #16
 a20:	d001      	beq.n	a26 <mpshm_virt2phys+0xe>
 a22:	2000      	movs	r0, #0
 a24:	4770      	bx	lr
 a26:	b538      	push	{r3, r4, r5, lr}
 a28:	460c      	mov	r4, r1
 a2a:	0c0b      	lsrs	r3, r1, #16
 a2c:	f003 050f 	and.w	r5, r3, #15
 a30:	f000 f936 	bl	ca0 <asmp_getlocalcpuid>
 a34:	0140      	lsls	r0, r0, #5
 a36:	4b09      	ldr	r3, [pc, #36]	@ (a5c <mpshm_virt2phys+0x44>)
 a38:	4403      	add	r3, r0
 a3a:	086a      	lsrs	r2, r5, #1
 a3c:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 a40:	f015 0f01 	tst.w	r5, #1
 a44:	bf08      	it	eq
 a46:	041b      	lsleq	r3, r3, #16
 a48:	4805      	ldr	r0, [pc, #20]	@ (a60 <mpshm_virt2phys+0x48>)
 a4a:	4018      	ands	r0, r3
 a4c:	b2a4      	uxth	r4, r4
 a4e:	4320      	orrs	r0, r4
 a50:	005b      	lsls	r3, r3, #1
 a52:	f003 6340 	and.w	r3, r3, #201326592	@ 0xc000000
 a56:	4318      	orrs	r0, r3
 a58:	bd38      	pop	{r3, r4, r5, pc}
 a5a:	bf00      	nop
 a5c:	4e012004 	.word	0x4e012004
 a60:	01ff0000 	.word	0x01ff0000

00000a64 <mpshm_attach>:
 a64:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 a68:	b085      	sub	sp, #20
 a6a:	4604      	mov	r4, r0
 a6c:	2800      	cmp	r0, #0
 a6e:	d054      	beq.n	b1a <mpshm_attach+0xb6>
 a70:	f3ef 8511 	mrs	r5, BASEPRI
 a74:	2380      	movs	r3, #128	@ 0x80
 a76:	f383 8811 	msr	BASEPRI, r3
 a7a:	8a46      	ldrh	r6, [r0, #18]
 a7c:	f000 f910 	bl	ca0 <asmp_getlocalcpuid>
 a80:	0140      	lsls	r0, r0, #5
 a82:	4a2c      	ldr	r2, [pc, #176]	@ (b34 <mpshm_attach+0xd0>)
 a84:	4402      	add	r2, r0
 a86:	2100      	movs	r1, #0
 a88:	460b      	mov	r3, r1
 a8a:	f04f 0c01 	mov.w	ip, #1
 a8e:	e003      	b.n	a98 <mpshm_attach+0x34>
 a90:	3302      	adds	r3, #2
 a92:	3204      	adds	r2, #4
 a94:	2b10      	cmp	r3, #16
 a96:	d00f      	beq.n	ab8 <mpshm_attach+0x54>
 a98:	6810      	ldr	r0, [r2, #0]
 a9a:	f410 4f7f 	tst.w	r0, #65280	@ 0xff00
 a9e:	bf04      	itt	eq
 aa0:	fa0c fe03 	lsleq.w	lr, ip, r3
 aa4:	ea41 010e 	orreq.w	r1, r1, lr
 aa8:	f1b0 7f80 	cmp.w	r0, #16777216	@ 0x1000000
 aac:	d2f0      	bcs.n	a90 <mpshm_attach+0x2c>
 aae:	1c58      	adds	r0, r3, #1
 ab0:	fa0c f000 	lsl.w	r0, ip, r0
 ab4:	4301      	orrs	r1, r0
 ab6:	e7eb      	b.n	a90 <mpshm_attach+0x2c>
 ab8:	2301      	movs	r3, #1
 aba:	40b3      	lsls	r3, r6
 abc:	3b01      	subs	r3, #1
 abe:	f1c6 0610 	rsb	r6, r6, #16
 ac2:	2e00      	cmp	r6, #0
 ac4:	dd30      	ble.n	b28 <mpshm_attach+0xc4>
 ac6:	ea33 0201 	bics.w	r2, r3, r1
 aca:	d02b      	beq.n	b24 <mpshm_attach+0xc0>
 acc:	2200      	movs	r2, #0
 ace:	005b      	lsls	r3, r3, #1
 ad0:	3201      	adds	r2, #1
 ad2:	42b2      	cmp	r2, r6
 ad4:	d024      	beq.n	b20 <mpshm_attach+0xbc>
 ad6:	ea33 0001 	bics.w	r0, r3, r1
 ada:	d1f8      	bne.n	ace <mpshm_attach+0x6a>
 adc:	b256      	sxtb	r6, r2
 ade:	2e00      	cmp	r6, #0
 ae0:	db24      	blt.n	b2c <mpshm_attach+0xc8>
 ae2:	f8d4 900c 	ldr.w	r9, [r4, #12]
 ae6:	f8d4 8010 	ldr.w	r8, [r4, #16]
 aea:	0437      	lsls	r7, r6, #16
 aec:	f000 f8d2 	bl	c94 <asmp_getglobalcpuid>
 af0:	9000      	str	r0, [sp, #0]
 af2:	9701      	str	r7, [sp, #4]
 af4:	f8cd 9008 	str.w	r9, [sp, #8]
 af8:	f8cd 800c 	str.w	r8, [sp, #12]
 afc:	4669      	mov	r1, sp
 afe:	2000      	movs	r0, #0
 b00:	f7ff ff8a 	bl	a18 <mpshm_virt2phys>
 b04:	4601      	mov	r1, r0
 b06:	2001      	movs	r0, #1
 b08:	f000 f915 	bl	d36 <sysctl>
 b0c:	b980      	cbnz	r0, b30 <mpshm_attach+0xcc>
 b0e:	4638      	mov	r0, r7
 b10:	b107      	cbz	r7, b14 <mpshm_attach+0xb0>
 b12:	7226      	strb	r6, [r4, #8]
 b14:	b2ed      	uxtb	r5, r5
 b16:	f385 8811 	msr	BASEPRI, r5
 b1a:	b005      	add	sp, #20
 b1c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 b20:	2000      	movs	r0, #0
 b22:	e7fa      	b.n	b1a <mpshm_attach+0xb6>
 b24:	2600      	movs	r6, #0
 b26:	e7dc      	b.n	ae2 <mpshm_attach+0x7e>
 b28:	2000      	movs	r0, #0
 b2a:	e7f6      	b.n	b1a <mpshm_attach+0xb6>
 b2c:	2000      	movs	r0, #0
 b2e:	e7f4      	b.n	b1a <mpshm_attach+0xb6>
 b30:	2000      	movs	r0, #0
 b32:	e7ef      	b.n	b14 <mpshm_attach+0xb0>
 b34:	4e012004 	.word	0x4e012004

00000b38 <mpshm_detach>:
 b38:	b1e8      	cbz	r0, b76 <mpshm_detach+0x3e>
 b3a:	b570      	push	{r4, r5, r6, lr}
 b3c:	b084      	sub	sp, #16
 b3e:	f3ef 8411 	mrs	r4, BASEPRI
 b42:	2280      	movs	r2, #128	@ 0x80
 b44:	f382 8811 	msr	BASEPRI, r2
 b48:	6906      	ldr	r6, [r0, #16]
 b4a:	f990 5008 	ldrsb.w	r5, [r0, #8]
 b4e:	042d      	lsls	r5, r5, #16
 b50:	f000 f8a0 	bl	c94 <asmp_getglobalcpuid>
 b54:	9001      	str	r0, [sp, #4]
 b56:	9502      	str	r5, [sp, #8]
 b58:	9603      	str	r6, [sp, #12]
 b5a:	a901      	add	r1, sp, #4
 b5c:	2000      	movs	r0, #0
 b5e:	f7ff ff5b 	bl	a18 <mpshm_virt2phys>
 b62:	4601      	mov	r1, r0
 b64:	2002      	movs	r0, #2
 b66:	f000 f8e6 	bl	d36 <sysctl>
 b6a:	b2e4      	uxtb	r4, r4
 b6c:	f384 8811 	msr	BASEPRI, r4
 b70:	2000      	movs	r0, #0
 b72:	b004      	add	sp, #16
 b74:	bd70      	pop	{r4, r5, r6, pc}
 b76:	f06f 0015 	mvn.w	r0, #21
 b7a:	4770      	bx	lr

00000b7c <mpshm_phys2virt>:
 b7c:	b510      	push	{r4, lr}
 b7e:	460c      	mov	r4, r1
 b80:	f000 f88e 	bl	ca0 <asmp_getlocalcpuid>
 b84:	0140      	lsls	r0, r0, #5
 b86:	4b0f      	ldr	r3, [pc, #60]	@ (bc4 <mpshm_phys2virt+0x48>)
 b88:	4403      	add	r3, r0
 b8a:	f3c4 4208 	ubfx	r2, r4, #16, #9
 b8e:	ea4f 4c54 	mov.w	ip, r4, lsr #17
 b92:	f40c 6cc0 	and.w	ip, ip, #1536	@ 0x600
 b96:	ea4c 0c02 	orr.w	ip, ip, r2
 b9a:	2000      	movs	r0, #0
 b9c:	681a      	ldr	r2, [r3, #0]
 b9e:	b291      	uxth	r1, r2
 ba0:	4561      	cmp	r1, ip
 ba2:	d00a      	beq.n	bba <mpshm_phys2virt+0x3e>
 ba4:	ebbc 4f12 	cmp.w	ip, r2, lsr #16
 ba8:	d009      	beq.n	bbe <mpshm_phys2virt+0x42>
 baa:	3002      	adds	r0, #2
 bac:	3304      	adds	r3, #4
 bae:	2810      	cmp	r0, #16
 bb0:	d1f4      	bne.n	b9c <mpshm_phys2virt+0x20>
 bb2:	2000      	movs	r0, #0
 bb4:	b2a4      	uxth	r4, r4
 bb6:	4320      	orrs	r0, r4
 bb8:	bd10      	pop	{r4, pc}
 bba:	0400      	lsls	r0, r0, #16
 bbc:	e7fa      	b.n	bb4 <mpshm_phys2virt+0x38>
 bbe:	3001      	adds	r0, #1
 bc0:	0400      	lsls	r0, r0, #16
 bc2:	e7f7      	b.n	bb4 <mpshm_phys2virt+0x38>
 bc4:	4e012004 	.word	0x4e012004

00000bc8 <cpufifo_push>:
 bc8:	4b09      	ldr	r3, [pc, #36]	@ (bf0 <cpufifo_push+0x28>)
 bca:	f8d3 3400 	ldr.w	r3, [r3, #1024]	@ 0x400
 bce:	b95b      	cbnz	r3, be8 <cpufifo_push+0x20>
 bd0:	6802      	ldr	r2, [r0, #0]
 bd2:	4b07      	ldr	r3, [pc, #28]	@ (bf0 <cpufifo_push+0x28>)
 bd4:	f8c3 2404 	str.w	r2, [r3, #1028]	@ 0x404
 bd8:	6842      	ldr	r2, [r0, #4]
 bda:	f8c3 2408 	str.w	r2, [r3, #1032]	@ 0x408
 bde:	2201      	movs	r2, #1
 be0:	f8c3 240c 	str.w	r2, [r3, #1036]	@ 0x40c
 be4:	2000      	movs	r0, #0
 be6:	4770      	bx	lr
 be8:	f04f 30ff 	mov.w	r0, #4294967295
 bec:	4770      	bx	lr
 bee:	bf00      	nop
 bf0:	4600c000 	.word	0x4600c000

00000bf4 <cpufifo_pull>:
 bf4:	b430      	push	{r4, r5}
 bf6:	4b1b      	ldr	r3, [pc, #108]	@ (c64 <cpufifo_pull+0x70>)
 bf8:	f8d3 3410 	ldr.w	r3, [r3, #1040]	@ 0x410
 bfc:	b9b3      	cbnz	r3, c2c <cpufifo_pull+0x38>
 bfe:	4b19      	ldr	r3, [pc, #100]	@ (c64 <cpufifo_pull+0x70>)
 c00:	f8d3 2414 	ldr.w	r2, [r3, #1044]	@ 0x414
 c04:	f8d3 5418 	ldr.w	r5, [r3, #1048]	@ 0x418
 c08:	2401      	movs	r4, #1
 c0a:	f8c3 441c 	str.w	r4, [r3, #1052]	@ 0x41c
 c0e:	f3c2 6303 	ubfx	r3, r2, #24, #4
 c12:	f012 6f70 	tst.w	r2, #251658240	@ 0xf000000
 c16:	d003      	beq.n	c20 <cpufifo_pull+0x2c>
 c18:	2b0c      	cmp	r3, #12
 c1a:	d10f      	bne.n	c3c <cpufifo_pull+0x48>
 c1c:	4b12      	ldr	r3, [pc, #72]	@ (c68 <cpufifo_pull+0x74>)
 c1e:	e000      	b.n	c22 <cpufifo_pull+0x2e>
 c20:	4b12      	ldr	r3, [pc, #72]	@ (c6c <cpufifo_pull+0x78>)
 c22:	2401      	movs	r4, #1
 c24:	601c      	str	r4, [r3, #0]
 c26:	605a      	str	r2, [r3, #4]
 c28:	609d      	str	r5, [r3, #8]
 c2a:	e000      	b.n	c2e <cpufifo_pull+0x3a>
 c2c:	2300      	movs	r3, #0
 c2e:	b158      	cbz	r0, c48 <cpufifo_pull+0x54>
 c30:	280c      	cmp	r0, #12
 c32:	d015      	beq.n	c60 <cpufifo_pull+0x6c>
 c34:	b94b      	cbnz	r3, c4a <cpufifo_pull+0x56>
 c36:	f04f 30ff 	mov.w	r0, #4294967295
 c3a:	e00f      	b.n	c5c <cpufifo_pull+0x68>
 c3c:	f04f 30ff 	mov.w	r0, #4294967295
 c40:	e00c      	b.n	c5c <cpufifo_pull+0x68>
 c42:	f04f 30ff 	mov.w	r0, #4294967295
 c46:	e009      	b.n	c5c <cpufifo_pull+0x68>
 c48:	4b08      	ldr	r3, [pc, #32]	@ (c6c <cpufifo_pull+0x78>)
 c4a:	681a      	ldr	r2, [r3, #0]
 c4c:	2a00      	cmp	r2, #0
 c4e:	d0f8      	beq.n	c42 <cpufifo_pull+0x4e>
 c50:	2000      	movs	r0, #0
 c52:	6018      	str	r0, [r3, #0]
 c54:	685a      	ldr	r2, [r3, #4]
 c56:	600a      	str	r2, [r1, #0]
 c58:	689b      	ldr	r3, [r3, #8]
 c5a:	604b      	str	r3, [r1, #4]
 c5c:	bc30      	pop	{r4, r5}
 c5e:	4770      	bx	lr
 c60:	4b01      	ldr	r3, [pc, #4]	@ (c68 <cpufifo_pull+0x74>)
 c62:	e7f2      	b.n	c4a <cpufifo_pull+0x56>
 c64:	4600c000 	.word	0x4600c000
 c68:	0000180c 	.word	0x0000180c
 c6c:	00001800 	.word	0x00001800

00000c70 <_signal>:
 c70:	b500      	push	{lr}
 c72:	b083      	sub	sp, #12
 c74:	0409      	lsls	r1, r1, #16
 c76:	ea41 7100 	orr.w	r1, r1, r0, lsl #28
 c7a:	f041 6170 	orr.w	r1, r1, #251658240	@ 0xf000000
 c7e:	9100      	str	r1, [sp, #0]
 c80:	9201      	str	r2, [sp, #4]
 c82:	4668      	mov	r0, sp
 c84:	f7ff ffa0 	bl	bc8 <cpufifo_push>
 c88:	2800      	cmp	r0, #0
 c8a:	dbfa      	blt.n	c82 <_signal+0x12>
 c8c:	b003      	add	sp, #12
 c8e:	f85d fb04 	ldr.w	pc, [sp], #4
	...

00000c94 <asmp_getglobalcpuid>:
 c94:	4b01      	ldr	r3, [pc, #4]	@ (c9c <asmp_getglobalcpuid+0x8>)
 c96:	6c18      	ldr	r0, [r3, #64]	@ 0x40
 c98:	b200      	sxth	r0, r0
 c9a:	4770      	bx	lr
 c9c:	4e002000 	.word	0x4e002000

00000ca0 <asmp_getlocalcpuid>:
 ca0:	4b02      	ldr	r3, [pc, #8]	@ (cac <asmp_getlocalcpuid+0xc>)
 ca2:	6c18      	ldr	r0, [r3, #64]	@ 0x40
 ca4:	3802      	subs	r0, #2
 ca6:	b200      	sxth	r0, r0
 ca8:	4770      	bx	lr
 caa:	bf00      	nop
 cac:	4e002000 	.word	0x4e002000

00000cb0 <__start>:
 cb0:	b508      	push	{r3, lr}
 cb2:	4b1c      	ldr	r3, [pc, #112]	@ (d24 <__start+0x74>)
 cb4:	f503 727f 	add.w	r2, r3, #1020	@ 0x3fc
 cb8:	f382 8809 	msr	PSP, r2
 cbc:	2280      	movs	r2, #128	@ 0x80
 cbe:	f382 8811 	msr	BASEPRI, r2
 cc2:	4a19      	ldr	r2, [pc, #100]	@ (d28 <__start+0x78>)
 cc4:	429a      	cmp	r2, r3
 cc6:	d20b      	bcs.n	ce0 <__start+0x30>
 cc8:	1e5a      	subs	r2, r3, #1
 cca:	4b17      	ldr	r3, [pc, #92]	@ (d28 <__start+0x78>)
 ccc:	1ad2      	subs	r2, r2, r3
 cce:	f022 0203 	bic.w	r2, r2, #3
 cd2:	3204      	adds	r2, #4
 cd4:	441a      	add	r2, r3
 cd6:	2100      	movs	r1, #0
 cd8:	f843 1b04 	str.w	r1, [r3], #4
 cdc:	4293      	cmp	r3, r2
 cde:	d1fb      	bne.n	cd8 <__start+0x28>
 ce0:	f3ef 8314 	mrs	r3, CONTROL
 ce4:	f023 0304 	bic.w	r3, r3, #4
 ce8:	f383 8814 	msr	CONTROL, r3
 cec:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 cf0:	f8d3 2f34 	ldr.w	r2, [r3, #3892]	@ 0xf34
 cf4:	f022 4240 	bic.w	r2, r2, #3221225472	@ 0xc0000000
 cf8:	f8c3 2f34 	str.w	r2, [r3, #3892]	@ 0xf34
 cfc:	f8d3 2d88 	ldr.w	r2, [r3, #3464]	@ 0xd88
 d00:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
 d04:	f8c3 2d88 	str.w	r2, [r3, #3464]	@ 0xd88
 d08:	2200      	movs	r2, #0
 d0a:	2101      	movs	r1, #1
 d0c:	2002      	movs	r0, #2
 d0e:	f7ff ffaf 	bl	c70 <_signal>
 d12:	23e0      	movs	r3, #224	@ 0xe0
 d14:	f383 8811 	msr	BASEPRI, r3
 d18:	b662      	cpsie	i
 d1a:	f7ff fc53 	bl	5c4 <main>
 d1e:	f7ff fcc0 	bl	6a2 <wk_exit>
 d22:	bd08      	pop	{r3, pc}
 d24:	0000181c 	.word	0x0000181c
 d28:	00001000 	.word	0x00001000

00000d2c <__debug_start>:
 d2c:	b508      	push	{r3, lr}
 d2e:	bf30      	wfi
 d30:	f7ff ffbe 	bl	cb0 <__start>
 d34:	bd08      	pop	{r3, pc}

00000d36 <sysctl>:
 d36:	b510      	push	{r4, lr}
 d38:	b082      	sub	sp, #8
 d3a:	f88d 0002 	strb.w	r0, [sp, #2]
 d3e:	230c      	movs	r3, #12
 d40:	f88d 3003 	strb.w	r3, [sp, #3]
 d44:	f64f 73ff 	movw	r3, #65535	@ 0xffff
 d48:	f8ad 3000 	strh.w	r3, [sp]
 d4c:	9101      	str	r1, [sp, #4]
 d4e:	4668      	mov	r0, sp
 d50:	f7ff ff3a 	bl	bc8 <cpufifo_push>
 d54:	2800      	cmp	r0, #0
 d56:	d1fa      	bne.n	d4e <sysctl+0x18>
 d58:	240c      	movs	r4, #12
 d5a:	4669      	mov	r1, sp
 d5c:	4620      	mov	r0, r4
 d5e:	f7ff ff49 	bl	bf4 <cpufifo_pull>
 d62:	2800      	cmp	r0, #0
 d64:	d1f9      	bne.n	d5a <sysctl+0x24>
 d66:	9801      	ldr	r0, [sp, #4]
 d68:	b002      	add	sp, #8
 d6a:	bd10      	pop	{r4, pc}

00000d6c <timer_start>:
 d6c:	2801      	cmp	r0, #1
 d6e:	d80a      	bhi.n	d86 <timer_start+0x1a>
 d70:	4b06      	ldr	r3, [pc, #24]	@ (d8c <timer_start+0x20>)
 d72:	4a07      	ldr	r2, [pc, #28]	@ (d90 <timer_start+0x24>)
 d74:	2800      	cmp	r0, #0
 d76:	bf18      	it	ne
 d78:	4613      	movne	r3, r2
 d7a:	689a      	ldr	r2, [r3, #8]
 d7c:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
 d80:	609a      	str	r2, [r3, #8]
 d82:	2000      	movs	r0, #0
 d84:	4770      	bx	lr
 d86:	f06f 000d 	mvn.w	r0, #13
 d8a:	4770      	bx	lr
 d8c:	e0043000 	.word	0xe0043000
 d90:	e0043020 	.word	0xe0043020

00000d94 <timer_stop>:
 d94:	b118      	cbz	r0, d9e <timer_stop+0xa>
 d96:	2801      	cmp	r0, #1
 d98:	d806      	bhi.n	da8 <timer_stop+0x14>
 d9a:	4b05      	ldr	r3, [pc, #20]	@ (db0 <timer_stop+0x1c>)
 d9c:	e000      	b.n	da0 <timer_stop+0xc>
 d9e:	4b05      	ldr	r3, [pc, #20]	@ (db4 <timer_stop+0x20>)
 da0:	2000      	movs	r0, #0
 da2:	6098      	str	r0, [r3, #8]
 da4:	6018      	str	r0, [r3, #0]
 da6:	4770      	bx	lr
 da8:	f06f 000d 	mvn.w	r0, #13
 dac:	4770      	bx	lr
 dae:	bf00      	nop
 db0:	e0043020 	.word	0xe0043020
 db4:	e0043000 	.word	0xe0043000

00000db8 <timer_settimeout>:
 db8:	b538      	push	{r3, r4, r5, lr}
 dba:	460c      	mov	r4, r1
 dbc:	b118      	cbz	r0, dc6 <timer_settimeout+0xe>
 dbe:	2801      	cmp	r0, #1
 dc0:	d817      	bhi.n	df2 <timer_settimeout+0x3a>
 dc2:	4d10      	ldr	r5, [pc, #64]	@ (e04 <timer_settimeout+0x4c>)
 dc4:	e000      	b.n	dc8 <timer_settimeout+0x10>
 dc6:	4d10      	ldr	r5, [pc, #64]	@ (e08 <timer_settimeout+0x50>)
 dc8:	1e62      	subs	r2, r4, #1
 dca:	4b10      	ldr	r3, [pc, #64]	@ (e0c <timer_settimeout+0x54>)
 dcc:	429a      	cmp	r2, r3
 dce:	d213      	bcs.n	df8 <timer_settimeout+0x40>
 dd0:	68ab      	ldr	r3, [r5, #8]
 dd2:	f013 0f80 	tst.w	r3, #128	@ 0x80
 dd6:	d112      	bne.n	dfe <timer_settimeout+0x46>
 dd8:	f000 f82e 	bl	e38 <clock_getcpubaseclock>
 ddc:	4a0c      	ldr	r2, [pc, #48]	@ (e10 <timer_settimeout+0x58>)
 dde:	2300      	movs	r3, #0
 de0:	fba4 0100 	umull	r0, r1, r4, r0
 de4:	f7ff fa6c 	bl	2c0 <__aeabi_uldivmod>
 de8:	6028      	str	r0, [r5, #0]
 dea:	2343      	movs	r3, #67	@ 0x43
 dec:	60ab      	str	r3, [r5, #8]
 dee:	2000      	movs	r0, #0
 df0:	bd38      	pop	{r3, r4, r5, pc}
 df2:	f06f 000d 	mvn.w	r0, #13
 df6:	e7fb      	b.n	df0 <timer_settimeout+0x38>
 df8:	f06f 0015 	mvn.w	r0, #21
 dfc:	e7f8      	b.n	df0 <timer_settimeout+0x38>
 dfe:	f06f 000f 	mvn.w	r0, #15
 e02:	e7f5      	b.n	df0 <timer_settimeout+0x38>
 e04:	e0043020 	.word	0xe0043020
 e08:	e0043000 	.word	0xe0043000
 e0c:	01999999 	.word	0x01999999
 e10:	000f4240 	.word	0x000f4240

00000e14 <timer_getvalue>:
 e14:	2801      	cmp	r0, #1
 e16:	d806      	bhi.n	e26 <timer_getvalue+0x12>
 e18:	4b04      	ldr	r3, [pc, #16]	@ (e2c <timer_getvalue+0x18>)
 e1a:	4a05      	ldr	r2, [pc, #20]	@ (e30 <timer_getvalue+0x1c>)
 e1c:	2800      	cmp	r0, #0
 e1e:	bf18      	it	ne
 e20:	4613      	movne	r3, r2
 e22:	6858      	ldr	r0, [r3, #4]
 e24:	4770      	bx	lr
 e26:	2000      	movs	r0, #0
 e28:	4770      	bx	lr
 e2a:	bf00      	nop
 e2c:	e0043000 	.word	0xe0043000
 e30:	e0043020 	.word	0xe0043020

00000e34 <up_doirq>:
 e34:	4608      	mov	r0, r1
 e36:	4770      	bx	lr

00000e38 <clock_getcpubaseclock>:
 e38:	4b43      	ldr	r3, [pc, #268]	@ (f48 <clock_getcpubaseclock+0x110>)
 e3a:	6818      	ldr	r0, [r3, #0]
 e3c:	f3c0 4306 	ubfx	r3, r0, #16, #7
 e40:	f410 0ffe 	tst.w	r0, #8323072	@ 0x7f0000
 e44:	d07d      	beq.n	f42 <clock_getcpubaseclock+0x10a>
 e46:	f010 007f 	ands.w	r0, r0, #127	@ 0x7f
 e4a:	d101      	bne.n	e50 <clock_getcpubaseclock+0x18>
 e4c:	2000      	movs	r0, #0
 e4e:	4770      	bx	lr
 e50:	4a3e      	ldr	r2, [pc, #248]	@ (f4c <clock_getcpubaseclock+0x114>)
 e52:	f8d2 1418 	ldr.w	r1, [r2, #1048]	@ 0x418
 e56:	f3c1 2201 	ubfx	r2, r1, #8, #2
 e5a:	2a03      	cmp	r2, #3
 e5c:	d86a      	bhi.n	f34 <clock_getcpubaseclock+0xfc>
 e5e:	e8df f002 	tbb	[pc, r2]
 e62:	1102      	.short	0x1102
 e64:	5e54      	.short	0x5e54
 e66:	4a3a      	ldr	r2, [pc, #232]	@ (f50 <clock_getcpubaseclock+0x118>)
 e68:	6812      	ldr	r2, [r2, #0]
 e6a:	b922      	cbnz	r2, e76 <clock_getcpubaseclock+0x3e>
 e6c:	f04f 6288 	mov.w	r2, #71303168	@ 0x4400000
 e70:	6811      	ldr	r1, [r2, #0]
 e72:	4a37      	ldr	r2, [pc, #220]	@ (f50 <clock_getcpubaseclock+0x118>)
 e74:	6011      	str	r1, [r2, #0]
 e76:	4a36      	ldr	r2, [pc, #216]	@ (f50 <clock_getcpubaseclock+0x118>)
 e78:	6812      	ldr	r2, [r2, #0]
 e7a:	fb02 f303 	mul.w	r3, r2, r3
 e7e:	fbb3 f0f0 	udiv	r0, r3, r0
 e82:	4770      	bx	lr
 e84:	b500      	push	{lr}
 e86:	f3c1 2c81 	ubfx	ip, r1, #10, #2
 e8a:	f10c 0e01 	add.w	lr, ip, #1
 e8e:	f1bc 0f03 	cmp.w	ip, #3
 e92:	d02a      	beq.n	eea <clock_getcpubaseclock+0xb2>
 e94:	4a2e      	ldr	r2, [pc, #184]	@ (f50 <clock_getcpubaseclock+0x118>)
 e96:	6812      	ldr	r2, [r2, #0]
 e98:	b922      	cbnz	r2, ea4 <clock_getcpubaseclock+0x6c>
 e9a:	f04f 6288 	mov.w	r2, #71303168	@ 0x4400000
 e9e:	6811      	ldr	r1, [r2, #0]
 ea0:	4a2b      	ldr	r2, [pc, #172]	@ (f50 <clock_getcpubaseclock+0x118>)
 ea2:	6011      	str	r1, [r2, #0]
 ea4:	f04f 6282 	mov.w	r2, #68157440	@ 0x4100000
 ea8:	f8d2 158c 	ldr.w	r1, [r2, #1420]	@ 0x58c
 eac:	0f8a      	lsrs	r2, r1, #30
 eae:	f3c1 61c2 	ubfx	r1, r1, #27, #3
 eb2:	2a01      	cmp	r2, #1
 eb4:	d01f      	beq.n	ef6 <clock_getcpubaseclock+0xbe>
 eb6:	2a03      	cmp	r2, #3
 eb8:	d020      	beq.n	efc <clock_getcpubaseclock+0xc4>
 eba:	2a01      	cmp	r2, #1
 ebc:	bf38      	it	cc
 ebe:	2201      	movcc	r2, #1
 ec0:	4694      	mov	ip, r2
 ec2:	2901      	cmp	r1, #1
 ec4:	d01d      	beq.n	f02 <clock_getcpubaseclock+0xca>
 ec6:	2902      	cmp	r1, #2
 ec8:	d01d      	beq.n	f06 <clock_getcpubaseclock+0xce>
 eca:	2900      	cmp	r1, #0
 ecc:	bf08      	it	eq
 ece:	210a      	moveq	r1, #10
 ed0:	4a20      	ldr	r2, [pc, #128]	@ (f54 <clock_getcpubaseclock+0x11c>)
 ed2:	fb01 f202 	mul.w	r2, r1, r2
 ed6:	fbb2 f2fc 	udiv	r2, r2, ip
 eda:	fbb2 f2fe 	udiv	r2, r2, lr
 ede:	fb02 f303 	mul.w	r3, r2, r3
 ee2:	fbb3 f0f0 	udiv	r0, r3, r0
 ee6:	f85d fb04 	ldr.w	pc, [sp], #4
 eea:	f011 0f80 	tst.w	r1, #128	@ 0x80
 eee:	bf18      	it	ne
 ef0:	f04f 0e05 	movne.w	lr, #5
 ef4:	e7ce      	b.n	e94 <clock_getcpubaseclock+0x5c>
 ef6:	f04f 0c02 	mov.w	ip, #2
 efa:	e7e2      	b.n	ec2 <clock_getcpubaseclock+0x8a>
 efc:	f04f 0c04 	mov.w	ip, #4
 f00:	e7df      	b.n	ec2 <clock_getcpubaseclock+0x8a>
 f02:	210c      	movs	r1, #12
 f04:	e7e4      	b.n	ed0 <clock_getcpubaseclock+0x98>
 f06:	210f      	movs	r1, #15
 f08:	e7e2      	b.n	ed0 <clock_getcpubaseclock+0x98>
 f0a:	4a11      	ldr	r2, [pc, #68]	@ (f50 <clock_getcpubaseclock+0x118>)
 f0c:	6812      	ldr	r2, [r2, #0]
 f0e:	b99a      	cbnz	r2, f38 <clock_getcpubaseclock+0x100>
 f10:	f04f 6288 	mov.w	r2, #71303168	@ 0x4400000
 f14:	6811      	ldr	r1, [r2, #0]
 f16:	4a0e      	ldr	r2, [pc, #56]	@ (f50 <clock_getcpubaseclock+0x118>)
 f18:	6011      	str	r1, [r2, #0]
 f1a:	4a0e      	ldr	r2, [pc, #56]	@ (f54 <clock_getcpubaseclock+0x11c>)
 f1c:	e7ad      	b.n	e7a <clock_getcpubaseclock+0x42>
 f1e:	4a0c      	ldr	r2, [pc, #48]	@ (f50 <clock_getcpubaseclock+0x118>)
 f20:	6812      	ldr	r2, [r2, #0]
 f22:	b95a      	cbnz	r2, f3c <clock_getcpubaseclock+0x104>
 f24:	f04f 6288 	mov.w	r2, #71303168	@ 0x4400000
 f28:	6811      	ldr	r1, [r2, #0]
 f2a:	4a09      	ldr	r2, [pc, #36]	@ (f50 <clock_getcpubaseclock+0x118>)
 f2c:	6011      	str	r1, [r2, #0]
 f2e:	f44f 4200 	mov.w	r2, #32768	@ 0x8000
 f32:	e7a2      	b.n	e7a <clock_getcpubaseclock+0x42>
 f34:	2200      	movs	r2, #0
 f36:	e7a0      	b.n	e7a <clock_getcpubaseclock+0x42>
 f38:	4a06      	ldr	r2, [pc, #24]	@ (f54 <clock_getcpubaseclock+0x11c>)
 f3a:	e79e      	b.n	e7a <clock_getcpubaseclock+0x42>
 f3c:	f44f 4200 	mov.w	r2, #32768	@ 0x8000
 f40:	e79b      	b.n	e7a <clock_getcpubaseclock+0x42>
 f42:	2000      	movs	r0, #0
 f44:	4770      	bx	lr
 f46:	bf00      	nop
 f48:	4e011000 	.word	0x4e011000
 f4c:	04103000 	.word	0x04103000
 f50:	00001818 	.word	0x00001818
 f54:	018cba80 	.word	0x018cba80
