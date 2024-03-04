
C:/Users/kosumosu/Desktop/prime_main.c.home.kosumosu.spresense.examples.prime.o:     file format elf32-littlearm


Disassembly of section .text.run_multicore_prime:

00000000 <run_multicore_prime>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	f5ad 7d6b 	sub.w	sp, sp, #940	@ 0x3ac
   8:	4681      	mov	r9, r0
   a:	2103      	movs	r1, #3
   c:	a823      	add	r0, sp, #140	@ 0x8c
   e:	f7ff fffe 	bl	0 <mpmutex_init>
  12:	1e04      	subs	r4, r0, #0
  14:	f2c0 80a7 	blt.w	166 <run_multicore_prime+0x166>
  18:	f44f 6280 	mov.w	r2, #1024	@ 0x400
  1c:	2101      	movs	r1, #1
  1e:	a81d      	add	r0, sp, #116	@ 0x74
  20:	f7ff fffe 	bl	0 <mpshm_init>
  24:	1e04      	subs	r4, r0, #0
  26:	f2c0 80aa 	blt.w	17e <run_multicore_prime+0x17e>
  2a:	2100      	movs	r1, #0
  2c:	a81d      	add	r0, sp, #116	@ 0x74
  2e:	f7ff fffe 	bl	0 <mpshm_attach>
  32:	9001      	str	r0, [sp, #4]
  34:	2800      	cmp	r0, #0
  36:	f000 80aa 	beq.w	18e <run_multicore_prime+0x18e>
  3a:	9c01      	ldr	r4, [sp, #4]
  3c:	4621      	mov	r1, r4
  3e:	48be      	ldr	r0, [pc, #760]	@ (338 <run_multicore_prime+0x338>)
  40:	f7ff fffe 	bl	0 <printf>
  44:	f44f 6280 	mov.w	r2, #1024	@ 0x400
  48:	2100      	movs	r1, #0
  4a:	4620      	mov	r0, r4
  4c:	f7ff fffe 	bl	0 <memset>
  50:	48ba      	ldr	r0, [pc, #744]	@ (33c <run_multicore_prime+0x33c>)
  52:	f7ff fffe 	bl	0 <puts>
  56:	4bba      	ldr	r3, [pc, #744]	@ (340 <run_multicore_prime+0x340>)
  58:	681b      	ldr	r3, [r3, #0]
  5a:	2b00      	cmp	r3, #0
  5c:	dd4f      	ble.n	fe <run_multicore_prime+0xfe>
  5e:	ae27      	add	r6, sp, #156	@ 0x9c
  60:	af09      	add	r7, sp, #36	@ 0x24
  62:	f04f 0800 	mov.w	r8, #0
  66:	f8df a324 	ldr.w	sl, [pc, #804]	@ 38c <run_multicore_prime+0x38c>
  6a:	f8df b2d4 	ldr.w	fp, [pc, #724]	@ 340 <run_multicore_prime+0x340>
  6e:	4649      	mov	r1, r9
  70:	4630      	mov	r0, r6
  72:	f7ff fffe 	bl	0 <mptask_init>
  76:	4604      	mov	r4, r0
  78:	2800      	cmp	r0, #0
  7a:	f040 8092 	bne.w	1a2 <run_multicore_prime+0x1a2>
  7e:	4630      	mov	r0, r6
  80:	f7ff fffe 	bl	0 <mptask_assign>
  84:	4604      	mov	r4, r0
  86:	2800      	cmp	r0, #0
  88:	f040 8093 	bne.w	1b2 <run_multicore_prime+0x1b2>
  8c:	4630      	mov	r0, r6
  8e:	f7ff fffe 	bl	0 <mptask_getcpuid>
  92:	4602      	mov	r2, r0
  94:	4641      	mov	r1, r8
  96:	4650      	mov	r0, sl
  98:	f7ff fffe 	bl	0 <printf>
  9c:	a923      	add	r1, sp, #140	@ 0x8c
  9e:	4630      	mov	r0, r6
  a0:	f7ff fffe 	bl	0 <mptask_bind>
  a4:	1e04      	subs	r4, r0, #0
  a6:	f2c0 808c 	blt.w	1c2 <run_multicore_prime+0x1c2>
  aa:	4630      	mov	r0, r6
  ac:	f7ff fffe 	bl	0 <mptask_getcpuid>
  b0:	4602      	mov	r2, r0
  b2:	2102      	movs	r1, #2
  b4:	4638      	mov	r0, r7
  b6:	f7ff fffe 	bl	0 <mpmq_init>
  ba:	1e04      	subs	r4, r0, #0
  bc:	f2c0 8089 	blt.w	1d2 <run_multicore_prime+0x1d2>
  c0:	4639      	mov	r1, r7
  c2:	4630      	mov	r0, r6
  c4:	f7ff fffe 	bl	0 <mptask_bind>
  c8:	1e04      	subs	r4, r0, #0
  ca:	f2c0 808a 	blt.w	1e2 <run_multicore_prime+0x1e2>
  ce:	a91d      	add	r1, sp, #116	@ 0x74
  d0:	4630      	mov	r0, r6
  d2:	f7ff fffe 	bl	0 <mptask_bind>
  d6:	1e04      	subs	r4, r0, #0
  d8:	f2c0 808b 	blt.w	1f2 <run_multicore_prime+0x1f2>
  dc:	4899      	ldr	r0, [pc, #612]	@ (344 <run_multicore_prime+0x344>)
  de:	f7ff fffe 	bl	0 <puts>
  e2:	4630      	mov	r0, r6
  e4:	f7ff fffe 	bl	0 <mptask_exec>
  e8:	1e04      	subs	r4, r0, #0
  ea:	f2c0 808a 	blt.w	202 <run_multicore_prime+0x202>
  ee:	f108 0801 	add.w	r8, r8, #1
  f2:	369c      	adds	r6, #156	@ 0x9c
  f4:	3710      	adds	r7, #16
  f6:	f8db 3000 	ldr.w	r3, [fp]
  fa:	4543      	cmp	r3, r8
  fc:	dcb7      	bgt.n	6e <run_multicore_prime+0x6e>
  fe:	4892      	ldr	r0, [pc, #584]	@ (348 <run_multicore_prime+0x348>)
 100:	f7ff fffe 	bl	0 <puts>
 104:	2100      	movs	r1, #0
 106:	a805      	add	r0, sp, #20
 108:	f7ff fffe 	bl	0 <gettimeofday>
 10c:	4b8c      	ldr	r3, [pc, #560]	@ (340 <run_multicore_prime+0x340>)
 10e:	681b      	ldr	r3, [r3, #0]
 110:	2b00      	cmp	r3, #0
 112:	dd21      	ble.n	158 <run_multicore_prime+0x158>
 114:	ae09      	add	r6, sp, #36	@ 0x24
 116:	2500      	movs	r5, #0
 118:	f8df 8274 	ldr.w	r8, [pc, #628]	@ 390 <run_multicore_prime+0x390>
 11c:	4f8b      	ldr	r7, [pc, #556]	@ (34c <run_multicore_prime+0x34c>)
 11e:	f8df 9220 	ldr.w	r9, [pc, #544]	@ 340 <run_multicore_prime+0x340>
 122:	f8d8 3000 	ldr.w	r3, [r8]
 126:	fb05 f203 	mul.w	r2, r5, r3
 12a:	9901      	ldr	r1, [sp, #4]
 12c:	f841 2035 	str.w	r2, [r1, r5, lsl #3]
 130:	3104      	adds	r1, #4
 132:	f841 3035 	str.w	r3, [r1, r5, lsl #3]
 136:	4629      	mov	r1, r5
 138:	4638      	mov	r0, r7
 13a:	f7ff fffe 	bl	0 <printf>
 13e:	462a      	mov	r2, r5
 140:	2101      	movs	r1, #1
 142:	4630      	mov	r0, r6
 144:	f7ff fffe 	bl	0 <mpmq_send>
 148:	1e04      	subs	r4, r0, #0
 14a:	db62      	blt.n	212 <run_multicore_prime+0x212>
 14c:	3501      	adds	r5, #1
 14e:	3610      	adds	r6, #16
 150:	f8d9 3000 	ldr.w	r3, [r9]
 154:	42ab      	cmp	r3, r5
 156:	dce4      	bgt.n	122 <run_multicore_prime+0x122>
 158:	487d      	ldr	r0, [pc, #500]	@ (350 <run_multicore_prime+0x350>)
 15a:	f7ff fffe 	bl	0 <puts>
 15e:	2700      	movs	r7, #0
 160:	f8df 81dc 	ldr.w	r8, [pc, #476]	@ 340 <run_multicore_prime+0x340>
 164:	e086      	b.n	274 <run_multicore_prime+0x274>
 166:	f7ff fffe 	bl	0 <nxsched_get_streams>
 16a:	4622      	mov	r2, r4
 16c:	4979      	ldr	r1, [pc, #484]	@ (354 <run_multicore_prime+0x354>)
 16e:	30dc      	adds	r0, #220	@ 0xdc
 170:	f7ff fffe 	bl	0 <fprintf>
 174:	4620      	mov	r0, r4
 176:	f50d 7d6b 	add.w	sp, sp, #940	@ 0x3ac
 17a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 17e:	f7ff fffe 	bl	0 <nxsched_get_streams>
 182:	4622      	mov	r2, r4
 184:	4974      	ldr	r1, [pc, #464]	@ (358 <run_multicore_prime+0x358>)
 186:	30dc      	adds	r0, #220	@ 0xdc
 188:	f7ff fffe 	bl	0 <fprintf>
 18c:	e7f2      	b.n	174 <run_multicore_prime+0x174>
 18e:	f7ff fffe 	bl	0 <nxsched_get_streams>
 192:	f100 03dc 	add.w	r3, r0, #220	@ 0xdc
 196:	2218      	movs	r2, #24
 198:	2101      	movs	r1, #1
 19a:	4870      	ldr	r0, [pc, #448]	@ (35c <run_multicore_prime+0x35c>)
 19c:	f7ff fffe 	bl	0 <fwrite>
 1a0:	e7e8      	b.n	174 <run_multicore_prime+0x174>
 1a2:	f7ff fffe 	bl	0 <nxsched_get_streams>
 1a6:	4622      	mov	r2, r4
 1a8:	496d      	ldr	r1, [pc, #436]	@ (360 <run_multicore_prime+0x360>)
 1aa:	30dc      	adds	r0, #220	@ 0xdc
 1ac:	f7ff fffe 	bl	0 <fprintf>
 1b0:	e7e0      	b.n	174 <run_multicore_prime+0x174>
 1b2:	f7ff fffe 	bl	0 <nxsched_get_streams>
 1b6:	4622      	mov	r2, r4
 1b8:	496a      	ldr	r1, [pc, #424]	@ (364 <run_multicore_prime+0x364>)
 1ba:	30dc      	adds	r0, #220	@ 0xdc
 1bc:	f7ff fffe 	bl	0 <fprintf>
 1c0:	e7d8      	b.n	174 <run_multicore_prime+0x174>
 1c2:	f7ff fffe 	bl	0 <nxsched_get_streams>
 1c6:	4622      	mov	r2, r4
 1c8:	4967      	ldr	r1, [pc, #412]	@ (368 <run_multicore_prime+0x368>)
 1ca:	30dc      	adds	r0, #220	@ 0xdc
 1cc:	f7ff fffe 	bl	0 <fprintf>
 1d0:	e7d0      	b.n	174 <run_multicore_prime+0x174>
 1d2:	f7ff fffe 	bl	0 <nxsched_get_streams>
 1d6:	4622      	mov	r2, r4
 1d8:	4964      	ldr	r1, [pc, #400]	@ (36c <run_multicore_prime+0x36c>)
 1da:	30dc      	adds	r0, #220	@ 0xdc
 1dc:	f7ff fffe 	bl	0 <fprintf>
 1e0:	e7c8      	b.n	174 <run_multicore_prime+0x174>
 1e2:	f7ff fffe 	bl	0 <nxsched_get_streams>
 1e6:	4622      	mov	r2, r4
 1e8:	4961      	ldr	r1, [pc, #388]	@ (370 <run_multicore_prime+0x370>)
 1ea:	30dc      	adds	r0, #220	@ 0xdc
 1ec:	f7ff fffe 	bl	0 <fprintf>
 1f0:	e7c0      	b.n	174 <run_multicore_prime+0x174>
 1f2:	f7ff fffe 	bl	0 <nxsched_get_streams>
 1f6:	4622      	mov	r2, r4
 1f8:	495e      	ldr	r1, [pc, #376]	@ (374 <run_multicore_prime+0x374>)
 1fa:	30dc      	adds	r0, #220	@ 0xdc
 1fc:	f7ff fffe 	bl	0 <fprintf>
 200:	e7b8      	b.n	174 <run_multicore_prime+0x174>
 202:	f7ff fffe 	bl	0 <nxsched_get_streams>
 206:	4622      	mov	r2, r4
 208:	495b      	ldr	r1, [pc, #364]	@ (378 <run_multicore_prime+0x378>)
 20a:	30dc      	adds	r0, #220	@ 0xdc
 20c:	f7ff fffe 	bl	0 <fprintf>
 210:	e7b0      	b.n	174 <run_multicore_prime+0x174>
 212:	f7ff fffe 	bl	0 <nxsched_get_streams>
 216:	4622      	mov	r2, r4
 218:	4958      	ldr	r1, [pc, #352]	@ (37c <run_multicore_prime+0x37c>)
 21a:	30dc      	adds	r0, #220	@ 0xdc
 21c:	f7ff fffe 	bl	0 <fprintf>
 220:	e7a8      	b.n	174 <run_multicore_prime+0x174>
 222:	202e      	movs	r0, #46	@ 0x2e
 224:	f7ff fffe 	bl	0 <putchar>
 228:	e009      	b.n	23e <run_multicore_prime+0x23e>
 22a:	200a      	movs	r0, #10
 22c:	f7ff fffe 	bl	0 <putchar>
 230:	3701      	adds	r7, #1
 232:	a823      	add	r0, sp, #140	@ 0x8c
 234:	f7ff fffe 	bl	0 <mpmutex_lock>
 238:	a823      	add	r0, sp, #140	@ 0x8c
 23a:	f7ff fffe 	bl	0 <mpmutex_unlock>
 23e:	3601      	adds	r6, #1
 240:	f8d8 3000 	ldr.w	r3, [r8]
 244:	3510      	adds	r5, #16
 246:	42b3      	cmp	r3, r6
 248:	dd12      	ble.n	270 <run_multicore_prime+0x270>
 24a:	464a      	mov	r2, r9
 24c:	a908      	add	r1, sp, #32
 24e:	4628      	mov	r0, r5
 250:	f7ff fffe 	bl	0 <mpmq_timedreceive>
 254:	4604      	mov	r4, r0
 256:	f110 0f74 	cmn.w	r0, #116	@ 0x74
 25a:	d0e2      	beq.n	222 <run_multicore_prime+0x222>
 25c:	2800      	cmp	r0, #0
 25e:	dae4      	bge.n	22a <run_multicore_prime+0x22a>
 260:	f7ff fffe 	bl	0 <nxsched_get_streams>
 264:	4622      	mov	r2, r4
 266:	4946      	ldr	r1, [pc, #280]	@ (380 <run_multicore_prime+0x380>)
 268:	30dc      	adds	r0, #220	@ 0xdc
 26a:	f7ff fffe 	bl	0 <fprintf>
 26e:	e781      	b.n	174 <run_multicore_prime+0x174>
 270:	42bb      	cmp	r3, r7
 272:	dd08      	ble.n	286 <run_multicore_prime+0x286>
 274:	f8d8 3000 	ldr.w	r3, [r8]
 278:	2b00      	cmp	r3, #0
 27a:	ddf9      	ble.n	270 <run_multicore_prime+0x270>
 27c:	ad09      	add	r5, sp, #36	@ 0x24
 27e:	2600      	movs	r6, #0
 280:	f04f 0932 	mov.w	r9, #50	@ 0x32
 284:	e7e1      	b.n	24a <run_multicore_prime+0x24a>
 286:	2100      	movs	r1, #0
 288:	a803      	add	r0, sp, #12
 28a:	f7ff fffe 	bl	0 <gettimeofday>
 28e:	9a03      	ldr	r2, [sp, #12]
 290:	9b05      	ldr	r3, [sp, #20]
 292:	eba2 0803 	sub.w	r8, r2, r3
 296:	9f04      	ldr	r7, [sp, #16]
 298:	9b06      	ldr	r3, [sp, #24]
 29a:	1aff      	subs	r7, r7, r3
 29c:	d43c      	bmi.n	318 <run_multicore_prime+0x318>
 29e:	463a      	mov	r2, r7
 2a0:	4641      	mov	r1, r8
 2a2:	4838      	ldr	r0, [pc, #224]	@ (384 <run_multicore_prime+0x384>)
 2a4:	f7ff fffe 	bl	0 <printf>
 2a8:	4b25      	ldr	r3, [pc, #148]	@ (340 <run_multicore_prime+0x340>)
 2aa:	681b      	ldr	r3, [r3, #0]
 2ac:	2b00      	cmp	r3, #0
 2ae:	dd14      	ble.n	2da <run_multicore_prime+0x2da>
 2b0:	ae27      	add	r6, sp, #156	@ 0x9c
 2b2:	2500      	movs	r5, #0
 2b4:	f04f 3aff 	mov.w	sl, #4294967295
 2b8:	f8df 9084 	ldr.w	r9, [pc, #132]	@ 340 <run_multicore_prime+0x340>
 2bc:	f8cd a01c 	str.w	sl, [sp, #28]
 2c0:	aa07      	add	r2, sp, #28
 2c2:	2100      	movs	r1, #0
 2c4:	4630      	mov	r0, r6
 2c6:	f7ff fffe 	bl	0 <mptask_destroy>
 2ca:	1e04      	subs	r4, r0, #0
 2cc:	db2b      	blt.n	326 <run_multicore_prime+0x326>
 2ce:	3501      	adds	r5, #1
 2d0:	369c      	adds	r6, #156	@ 0x9c
 2d2:	f8d9 3000 	ldr.w	r3, [r9]
 2d6:	42ab      	cmp	r3, r5
 2d8:	dcf0      	bgt.n	2bc <run_multicore_prime+0x2bc>
 2da:	a81d      	add	r0, sp, #116	@ 0x74
 2dc:	f7ff fffe 	bl	0 <mpshm_detach>
 2e0:	a81d      	add	r0, sp, #116	@ 0x74
 2e2:	f7ff fffe 	bl	0 <mpshm_destroy>
 2e6:	a823      	add	r0, sp, #140	@ 0x8c
 2e8:	f7ff fffe 	bl	0 <mpmutex_destroy>
 2ec:	4b14      	ldr	r3, [pc, #80]	@ (340 <run_multicore_prime+0x340>)
 2ee:	681b      	ldr	r3, [r3, #0]
 2f0:	2b00      	cmp	r3, #0
 2f2:	dd0a      	ble.n	30a <run_multicore_prime+0x30a>
 2f4:	ad09      	add	r5, sp, #36	@ 0x24
 2f6:	2400      	movs	r4, #0
 2f8:	4e11      	ldr	r6, [pc, #68]	@ (340 <run_multicore_prime+0x340>)
 2fa:	4628      	mov	r0, r5
 2fc:	f7ff fffe 	bl	0 <mpmq_destroy>
 300:	3401      	adds	r4, #1
 302:	3510      	adds	r5, #16
 304:	6833      	ldr	r3, [r6, #0]
 306:	42a3      	cmp	r3, r4
 308:	dcf7      	bgt.n	2fa <run_multicore_prime+0x2fa>
 30a:	f44f 747a 	mov.w	r4, #1000	@ 0x3e8
 30e:	fb97 f7f4 	sdiv	r7, r7, r4
 312:	fb04 7408 	mla	r4, r4, r8, r7
 316:	e72d      	b.n	174 <run_multicore_prime+0x174>
 318:	f108 38ff 	add.w	r8, r8, #4294967295
 31c:	f507 2774 	add.w	r7, r7, #999424	@ 0xf4000
 320:	f507 7710 	add.w	r7, r7, #576	@ 0x240
 324:	e7bb      	b.n	29e <run_multicore_prime+0x29e>
 326:	f7ff fffe 	bl	0 <nxsched_get_streams>
 32a:	4622      	mov	r2, r4
 32c:	4916      	ldr	r1, [pc, #88]	@ (388 <run_multicore_prime+0x388>)
 32e:	30dc      	adds	r0, #220	@ 0xdc
 330:	f7ff fffe 	bl	0 <fprintf>
 334:	e71e      	b.n	174 <run_multicore_prime+0x174>
 336:	bf00      	nop
 338:	00000054 	.word	0x00000054
 33c:	00000070 	.word	0x00000070
 340:	00000000 	.word	0x00000000
 344:	00000178 	.word	0x00000178
 348:	000001a4 	.word	0x000001a4
 34c:	000001b8 	.word	0x000001b8
 350:	00000204 	.word	0x00000204
 354:	00000000 	.word	0x00000000
 358:	0000001c 	.word	0x0000001c
 35c:	00000038 	.word	0x00000038
 360:	0000009c 	.word	0x0000009c
 364:	000000b8 	.word	0x000000b8
 368:	000000f4 	.word	0x000000f4
 36c:	0000011c 	.word	0x0000011c
 370:	00000138 	.word	0x00000138
 374:	00000158 	.word	0x00000158
 378:	00000188 	.word	0x00000188
 37c:	000001e8 	.word	0x000001e8
 380:	0000022c 	.word	0x0000022c
 384:	00000248 	.word	0x00000248
 388:	000002a8 	.word	0x000002a8
 38c:	000000d4 	.word	0x000000d4
 390:	00000000 	.word	0x00000000

Disassembly of section .text.find_primes:

00000000 <find_primes>:
   0:	1a09      	subs	r1, r1, r0
   2:	3101      	adds	r1, #1
   4:	2900      	cmp	r1, #0
   6:	dd02      	ble.n	e <find_primes+0xe>
   8:	bf00      	nop
   a:	3901      	subs	r1, #1
   c:	d1fc      	bne.n	8 <find_primes+0x8>
   e:	4770      	bx	lr

Disassembly of section .text.mount_romfs:

00000000 <mount_romfs>:
   0:	b530      	push	{r4, r5, lr}
   2:	b093      	sub	sp, #76	@ 0x4c
   4:	a903      	add	r1, sp, #12
   6:	481f      	ldr	r0, [pc, #124]	@ (84 <mount_romfs+0x84>)
   8:	f7ff fffe 	bl	0 <stat>
   c:	1e04      	subs	r4, r0, #0
   e:	db02      	blt.n	16 <mount_romfs+0x16>
  10:	4620      	mov	r0, r4
  12:	b013      	add	sp, #76	@ 0x4c
  14:	bd30      	pop	{r4, r5, pc}
  16:	481c      	ldr	r0, [pc, #112]	@ (88 <mount_romfs+0x88>)
  18:	f7ff fffe 	bl	0 <puts>
  1c:	2000      	movs	r0, #0
  1e:	9000      	str	r0, [sp, #0]
  20:	f44f 7300 	mov.w	r3, #512	@ 0x200
  24:	2212      	movs	r2, #18
  26:	4919      	ldr	r1, [pc, #100]	@ (8c <mount_romfs+0x8c>)
  28:	f7ff fffe 	bl	0 <ramdisk_register>
  2c:	1e04      	subs	r4, r0, #0
  2e:	db1f      	blt.n	70 <mount_romfs+0x70>
  30:	4c17      	ldr	r4, [pc, #92]	@ (90 <mount_romfs+0x90>)
  32:	4d14      	ldr	r5, [pc, #80]	@ (84 <mount_romfs+0x84>)
  34:	4622      	mov	r2, r4
  36:	4629      	mov	r1, r5
  38:	4816      	ldr	r0, [pc, #88]	@ (94 <mount_romfs+0x94>)
  3a:	f7ff fffe 	bl	0 <printf>
  3e:	2300      	movs	r3, #0
  40:	9300      	str	r3, [sp, #0]
  42:	2301      	movs	r3, #1
  44:	4a14      	ldr	r2, [pc, #80]	@ (98 <mount_romfs+0x98>)
  46:	4629      	mov	r1, r5
  48:	4620      	mov	r0, r4
  4a:	f7ff fffe 	bl	0 <mount>
  4e:	1e04      	subs	r4, r0, #0
  50:	dade      	bge.n	10 <mount_romfs+0x10>
  52:	f7ff fffe 	bl	0 <nxsched_get_streams>
  56:	4605      	mov	r5, r0
  58:	f7ff fffe 	bl	0 <__errno>
  5c:	6803      	ldr	r3, [r0, #0]
  5e:	9300      	str	r3, [sp, #0]
  60:	4b08      	ldr	r3, [pc, #32]	@ (84 <mount_romfs+0x84>)
  62:	4a0b      	ldr	r2, [pc, #44]	@ (90 <mount_romfs+0x90>)
  64:	490d      	ldr	r1, [pc, #52]	@ (9c <mount_romfs+0x9c>)
  66:	f105 00dc 	add.w	r0, r5, #220	@ 0xdc
  6a:	f7ff fffe 	bl	0 <fprintf>
  6e:	e7cf      	b.n	10 <mount_romfs+0x10>
  70:	f7ff fffe 	bl	0 <nxsched_get_streams>
  74:	4622      	mov	r2, r4
  76:	490a      	ldr	r1, [pc, #40]	@ (a0 <mount_romfs+0xa0>)
  78:	30dc      	adds	r0, #220	@ 0xdc
  7a:	f7ff fffe 	bl	0 <fprintf>
  7e:	2001      	movs	r0, #1
  80:	f7ff fffe 	bl	0 <exit>
  84:	00000000 	.word	0x00000000
  88:	00000008 	.word	0x00000008
  8c:	00000000 	.word	0x00000000
  90:	00000050 	.word	0x00000050
  94:	0000005c 	.word	0x0000005c
  98:	00000094 	.word	0x00000094
  9c:	0000009c 	.word	0x0000009c
  a0:	0000002c 	.word	0x0000002c

Disassembly of section .text.prime_main:

00000000 <prime_main>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b087      	sub	sp, #28
   6:	4604      	mov	r4, r0
   8:	460d      	mov	r5, r1
   a:	f7ff fffe 	bl	0 <prime_main>
   e:	4683      	mov	fp, r0
  10:	2c01      	cmp	r4, #1
  12:	dc62      	bgt.n	da <prime_main+0xda>
  14:	4d3e      	ldr	r5, [pc, #248]	@ (110 <prime_main+0x110>)
  16:	4b3f      	ldr	r3, [pc, #252]	@ (114 <prime_main+0x114>)
  18:	9300      	str	r3, [sp, #0]
  1a:	4b3f      	ldr	r3, [pc, #252]	@ (118 <prime_main+0x118>)
  1c:	4a3f      	ldr	r2, [pc, #252]	@ (11c <prime_main+0x11c>)
  1e:	2180      	movs	r1, #128	@ 0x80
  20:	4628      	mov	r0, r5
  22:	f7ff fffe 	bl	0 <snprintf>
  26:	4c3e      	ldr	r4, [pc, #248]	@ (120 <prime_main+0x120>)
  28:	6821      	ldr	r1, [r4, #0]
  2a:	483e      	ldr	r0, [pc, #248]	@ (124 <prime_main+0x124>)
  2c:	f7ff fffe 	bl	0 <printf>
  30:	4628      	mov	r0, r5
  32:	f7ff fffe 	bl	0 <prime_main>
  36:	4682      	mov	sl, r0
  38:	483b      	ldr	r0, [pc, #236]	@ (128 <prime_main+0x128>)
  3a:	f7ff fffe 	bl	0 <puts>
  3e:	2100      	movs	r1, #0
  40:	a802      	add	r0, sp, #8
  42:	f7ff fffe 	bl	0 <gettimeofday>
  46:	6823      	ldr	r3, [r4, #0]
  48:	2b00      	cmp	r3, #0
  4a:	dd1c      	ble.n	86 <prime_main+0x86>
  4c:	2400      	movs	r4, #0
  4e:	f8df 90ec 	ldr.w	r9, [pc, #236]	@ 13c <prime_main+0x13c>
  52:	f8df 80ec 	ldr.w	r8, [pc, #236]	@ 140 <prime_main+0x140>
  56:	4f35      	ldr	r7, [pc, #212]	@ (12c <prime_main+0x12c>)
  58:	f8d9 6000 	ldr.w	r6, [r9]
  5c:	fb06 f504 	mul.w	r5, r6, r4
  60:	4633      	mov	r3, r6
  62:	462a      	mov	r2, r5
  64:	4621      	mov	r1, r4
  66:	4640      	mov	r0, r8
  68:	f7ff fffe 	bl	0 <printf>
  6c:	19a9      	adds	r1, r5, r6
  6e:	4628      	mov	r0, r5
  70:	f7ff fffe 	bl	0 <prime_main>
  74:	4601      	mov	r1, r0
  76:	4638      	mov	r0, r7
  78:	f7ff fffe 	bl	0 <printf>
  7c:	3401      	adds	r4, #1
  7e:	4b28      	ldr	r3, [pc, #160]	@ (120 <prime_main+0x120>)
  80:	681b      	ldr	r3, [r3, #0]
  82:	429c      	cmp	r4, r3
  84:	dbe8      	blt.n	58 <prime_main+0x58>
  86:	2100      	movs	r1, #0
  88:	a804      	add	r0, sp, #16
  8a:	f7ff fffe 	bl	0 <gettimeofday>
  8e:	9d04      	ldr	r5, [sp, #16]
  90:	9b02      	ldr	r3, [sp, #8]
  92:	1aed      	subs	r5, r5, r3
  94:	9c05      	ldr	r4, [sp, #20]
  96:	9b03      	ldr	r3, [sp, #12]
  98:	1ae4      	subs	r4, r4, r3
  9a:	d432      	bmi.n	102 <prime_main+0x102>
  9c:	4622      	mov	r2, r4
  9e:	4629      	mov	r1, r5
  a0:	4823      	ldr	r0, [pc, #140]	@ (130 <prime_main+0x130>)
  a2:	f7ff fffe 	bl	0 <printf>
  a6:	4a23      	ldr	r2, [pc, #140]	@ (134 <prime_main+0x134>)
  a8:	fb82 3204 	smull	r3, r2, r2, r4
  ac:	17e3      	asrs	r3, r4, #31
  ae:	ebc3 13a2 	rsb	r3, r3, r2, asr #6
  b2:	f44f 747a 	mov.w	r4, #1000	@ 0x3e8
  b6:	fb04 3305 	mla	r3, r4, r5, r3
  ba:	2264      	movs	r2, #100	@ 0x64
  bc:	fb03 f202 	mul.w	r2, r3, r2
  c0:	fbb2 f2fa 	udiv	r2, r2, sl
  c4:	9200      	str	r2, [sp, #0]
  c6:	4652      	mov	r2, sl
  c8:	4915      	ldr	r1, [pc, #84]	@ (120 <prime_main+0x120>)
  ca:	6809      	ldr	r1, [r1, #0]
  cc:	481a      	ldr	r0, [pc, #104]	@ (138 <prime_main+0x138>)
  ce:	f7ff fffe 	bl	0 <printf>
  d2:	4658      	mov	r0, fp
  d4:	b007      	add	sp, #28
  d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
  da:	6868      	ldr	r0, [r5, #4]
  dc:	f7ff fffe 	bl	0 <atoi>
  e0:	b120      	cbz	r0, ec <prime_main+0xec>
  e2:	2805      	cmp	r0, #5
  e4:	dc02      	bgt.n	ec <prime_main+0xec>
  e6:	4a0e      	ldr	r2, [pc, #56]	@ (120 <prime_main+0x120>)
  e8:	6010      	str	r0, [r2, #0]
  ea:	e002      	b.n	f2 <prime_main+0xf2>
  ec:	4b0c      	ldr	r3, [pc, #48]	@ (120 <prime_main+0x120>)
  ee:	2205      	movs	r2, #5
  f0:	601a      	str	r2, [r3, #0]
  f2:	2c02      	cmp	r4, #2
  f4:	dd8e      	ble.n	14 <prime_main+0x14>
  f6:	68a8      	ldr	r0, [r5, #8]
  f8:	f7ff fffe 	bl	0 <atoi>
  fc:	4b0f      	ldr	r3, [pc, #60]	@ (13c <prime_main+0x13c>)
  fe:	6018      	str	r0, [r3, #0]
 100:	e788      	b.n	14 <prime_main+0x14>
 102:	3d01      	subs	r5, #1
 104:	f504 2474 	add.w	r4, r4, #999424	@ 0xf4000
 108:	f504 7410 	add.w	r4, r4, #576	@ 0x240
 10c:	e7c6      	b.n	9c <prime_main+0x9c>
 10e:	bf00      	nop
 110:	00000000 	.word	0x00000000
 114:	00000008 	.word	0x00000008
	...
 124:	00000010 	.word	0x00000010
 128:	00000024 	.word	0x00000024
 12c:	0000007c 	.word	0x0000007c
 130:	00000248 	.word	0x00000248
 134:	10624dd3 	.word	0x10624dd3
 138:	00000090 	.word	0x00000090
 13c:	00000000 	.word	0x00000000
 140:	00000050 	.word	0x00000050
