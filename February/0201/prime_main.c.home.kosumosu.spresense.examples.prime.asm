
C:/Users/kosumosu/Desktop/0201/prime_main.c.home.kosumosu.spresense.examples.prime.o:     file format elf32-littlearm


Disassembly of section .text.time_measure_end:

00000000 <time_measure_end>:
   0:	b573      	push	{r0, r1, r4, r5, r6, lr}
   2:	4606      	mov	r6, r0
   4:	2100      	movs	r1, #0
   6:	4668      	mov	r0, sp
   8:	f7ff fffe 	bl	0 <gettimeofday>
   c:	6870      	ldr	r0, [r6, #4]
   e:	9c01      	ldr	r4, [sp, #4]
  10:	6831      	ldr	r1, [r6, #0]
  12:	9d00      	ldr	r5, [sp, #0]
  14:	1a24      	subs	r4, r4, r0
  16:	bf48      	it	mi
  18:	f504 2474 	addmi.w	r4, r4, #999424	@ 0xf4000
  1c:	eba5 0501 	sub.w	r5, r5, r1
  20:	bf44      	itt	mi
  22:	f105 35ff 	addmi.w	r5, r5, #4294967295
  26:	f504 7410 	addmi.w	r4, r4, #576	@ 0x240
  2a:	4622      	mov	r2, r4
  2c:	4629      	mov	r1, r5
  2e:	4805      	ldr	r0, [pc, #20]	@ (44 <time_measure_end+0x44>)
  30:	f7ff fffe 	bl	0 <printf>
  34:	f44f 707a 	mov.w	r0, #1000	@ 0x3e8
  38:	fb94 f4f0 	sdiv	r4, r4, r0
  3c:	fb00 4005 	mla	r0, r0, r5, r4
  40:	b002      	add	sp, #8
  42:	bd70      	pop	{r4, r5, r6, pc}
  44:	00000000 	.word	0x00000000

Disassembly of section .text.run_multicore_prime.constprop.0:

00000000 <run_multicore_prime.constprop.0>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	f5ad 7d69 	sub.w	sp, sp, #932	@ 0x3a4
   8:	2103      	movs	r1, #3
   a:	a807      	add	r0, sp, #28
   c:	f7ff fffe 	bl	0 <mpmutex_init>
  10:	1e04      	subs	r4, r0, #0
  12:	da07      	bge.n	24 <run_multicore_prime.constprop.0+0x24>
  14:	f7ff fffe 	bl	0 <nxsched_get_streams>
  18:	4999      	ldr	r1, [pc, #612]	@ (280 <run_multicore_prime.constprop.0+0x280>)
  1a:	4622      	mov	r2, r4
  1c:	30dc      	adds	r0, #220	@ 0xdc
  1e:	f7ff fffe 	bl	0 <fprintf>
  22:	e019      	b.n	58 <run_multicore_prime.constprop.0+0x58>
  24:	f44f 6280 	mov.w	r2, #1024	@ 0x400
  28:	2101      	movs	r1, #1
  2a:	a80b      	add	r0, sp, #44	@ 0x2c
  2c:	f7ff fffe 	bl	0 <mpshm_init>
  30:	1e04      	subs	r4, r0, #0
  32:	da04      	bge.n	3e <run_multicore_prime.constprop.0+0x3e>
  34:	f7ff fffe 	bl	0 <nxsched_get_streams>
  38:	4992      	ldr	r1, [pc, #584]	@ (284 <run_multicore_prime.constprop.0+0x284>)
  3a:	4622      	mov	r2, r4
  3c:	e7ee      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
  3e:	2100      	movs	r1, #0
  40:	a80b      	add	r0, sp, #44	@ 0x2c
  42:	f7ff fffe 	bl	0 <mpshm_attach>
  46:	4606      	mov	r6, r0
  48:	b958      	cbnz	r0, 62 <run_multicore_prime.constprop.0+0x62>
  4a:	f7ff fffe 	bl	0 <nxsched_get_streams>
  4e:	f100 01dc 	add.w	r1, r0, #220	@ 0xdc
  52:	488d      	ldr	r0, [pc, #564]	@ (288 <run_multicore_prime.constprop.0+0x288>)
  54:	f7ff fffe 	bl	0 <fputs>
  58:	4620      	mov	r0, r4
  5a:	f50d 7d69 	add.w	sp, sp, #932	@ 0x3a4
  5e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
  62:	4601      	mov	r1, r0
  64:	4889      	ldr	r0, [pc, #548]	@ (28c <run_multicore_prime.constprop.0+0x28c>)
  66:	f8df 826c 	ldr.w	r8, [pc, #620]	@ 2d4 <run_multicore_prime.constprop.0+0x2d4>
  6a:	f7ff fffe 	bl	0 <printf>
  6e:	f44f 6280 	mov.w	r2, #1024	@ 0x400
  72:	2100      	movs	r1, #0
  74:	4630      	mov	r0, r6
  76:	f7ff fffe 	bl	0 <memset>
  7a:	4885      	ldr	r0, [pc, #532]	@ (290 <run_multicore_prime.constprop.0+0x290>)
  7c:	f7ff fffe 	bl	0 <puts>
  80:	f10d 0994 	add.w	r9, sp, #148	@ 0x94
  84:	af11      	add	r7, sp, #68	@ 0x44
  86:	46bb      	mov	fp, r7
  88:	464d      	mov	r5, r9
  8a:	f04f 0a00 	mov.w	sl, #0
  8e:	f8d8 3000 	ldr.w	r3, [r8]
  92:	459a      	cmp	sl, r3
  94:	db3b      	blt.n	10e <run_multicore_prime.constprop.0+0x10e>
  96:	487f      	ldr	r0, [pc, #508]	@ (294 <run_multicore_prime.constprop.0+0x294>)
  98:	f8df b23c 	ldr.w	fp, [pc, #572]	@ 2d8 <run_multicore_prime.constprop.0+0x2d8>
  9c:	f7ff fffe 	bl	0 <puts>
  a0:	2100      	movs	r1, #0
  a2:	a805      	add	r0, sp, #20
  a4:	f7ff fffe 	bl	0 <gettimeofday>
  a8:	1d33      	adds	r3, r6, #4
  aa:	46ba      	mov	sl, r7
  ac:	2500      	movs	r5, #0
  ae:	9301      	str	r3, [sp, #4]
  b0:	f8d8 3000 	ldr.w	r3, [r8]
  b4:	429d      	cmp	r5, r3
  b6:	f2c0 808b 	blt.w	1d0 <run_multicore_prime.constprop.0+0x1d0>
  ba:	4877      	ldr	r0, [pc, #476]	@ (298 <run_multicore_prime.constprop.0+0x298>)
  bc:	f7ff fffe 	bl	0 <puts>
  c0:	2500      	movs	r5, #0
  c2:	46ba      	mov	sl, r7
  c4:	2600      	movs	r6, #0
  c6:	f8d8 3000 	ldr.w	r3, [r8]
  ca:	429e      	cmp	r6, r3
  cc:	f2c0 809d 	blt.w	20a <run_multicore_prime.constprop.0+0x20a>
  d0:	429d      	cmp	r5, r3
  d2:	dbf6      	blt.n	c2 <run_multicore_prime.constprop.0+0xc2>
  d4:	a805      	add	r0, sp, #20
  d6:	f7ff fffe 	bl	0 <run_multicore_prime.constprop.0>
  da:	2600      	movs	r6, #0
  dc:	4605      	mov	r5, r0
  de:	f04f 3aff 	mov.w	sl, #4294967295
  e2:	f8d8 3000 	ldr.w	r3, [r8]
  e6:	429e      	cmp	r6, r3
  e8:	f2c0 80b1 	blt.w	24e <run_multicore_prime.constprop.0+0x24e>
  ec:	a80b      	add	r0, sp, #44	@ 0x2c
  ee:	f7ff fffe 	bl	0 <mpshm_detach>
  f2:	a80b      	add	r0, sp, #44	@ 0x2c
  f4:	f7ff fffe 	bl	0 <mpshm_destroy>
  f8:	a807      	add	r0, sp, #28
  fa:	f7ff fffe 	bl	0 <mpmutex_destroy>
  fe:	2400      	movs	r4, #0
 100:	f8d8 3000 	ldr.w	r3, [r8]
 104:	429c      	cmp	r4, r3
 106:	f2c0 80b4 	blt.w	272 <run_multicore_prime.constprop.0+0x272>
 10a:	462c      	mov	r4, r5
 10c:	e7a4      	b.n	58 <run_multicore_prime.constprop.0+0x58>
 10e:	4963      	ldr	r1, [pc, #396]	@ (29c <run_multicore_prime.constprop.0+0x29c>)
 110:	4628      	mov	r0, r5
 112:	f7ff fffe 	bl	0 <mptask_init>
 116:	4604      	mov	r4, r0
 118:	b120      	cbz	r0, 124 <run_multicore_prime.constprop.0+0x124>
 11a:	f7ff fffe 	bl	0 <nxsched_get_streams>
 11e:	4960      	ldr	r1, [pc, #384]	@ (2a0 <run_multicore_prime.constprop.0+0x2a0>)
 120:	4622      	mov	r2, r4
 122:	e77b      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 124:	4628      	mov	r0, r5
 126:	f7ff fffe 	bl	0 <mptask_assign>
 12a:	4604      	mov	r4, r0
 12c:	b120      	cbz	r0, 138 <run_multicore_prime.constprop.0+0x138>
 12e:	f7ff fffe 	bl	0 <nxsched_get_streams>
 132:	495c      	ldr	r1, [pc, #368]	@ (2a4 <run_multicore_prime.constprop.0+0x2a4>)
 134:	4622      	mov	r2, r4
 136:	e771      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 138:	4628      	mov	r0, r5
 13a:	f7ff fffe 	bl	0 <mptask_getcpuid>
 13e:	4651      	mov	r1, sl
 140:	4602      	mov	r2, r0
 142:	4859      	ldr	r0, [pc, #356]	@ (2a8 <run_multicore_prime.constprop.0+0x2a8>)
 144:	f7ff fffe 	bl	0 <printf>
 148:	a907      	add	r1, sp, #28
 14a:	4628      	mov	r0, r5
 14c:	f7ff fffe 	bl	0 <mptask_bind>
 150:	1e04      	subs	r4, r0, #0
 152:	da04      	bge.n	15e <run_multicore_prime.constprop.0+0x15e>
 154:	f7ff fffe 	bl	0 <nxsched_get_streams>
 158:	4954      	ldr	r1, [pc, #336]	@ (2ac <run_multicore_prime.constprop.0+0x2ac>)
 15a:	4622      	mov	r2, r4
 15c:	e75e      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 15e:	4628      	mov	r0, r5
 160:	f7ff fffe 	bl	0 <mptask_getcpuid>
 164:	2102      	movs	r1, #2
 166:	4602      	mov	r2, r0
 168:	4658      	mov	r0, fp
 16a:	f7ff fffe 	bl	0 <mpmq_init>
 16e:	1e04      	subs	r4, r0, #0
 170:	da04      	bge.n	17c <run_multicore_prime.constprop.0+0x17c>
 172:	f7ff fffe 	bl	0 <nxsched_get_streams>
 176:	494e      	ldr	r1, [pc, #312]	@ (2b0 <run_multicore_prime.constprop.0+0x2b0>)
 178:	4622      	mov	r2, r4
 17a:	e74f      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 17c:	4659      	mov	r1, fp
 17e:	4628      	mov	r0, r5
 180:	f7ff fffe 	bl	0 <mptask_bind>
 184:	1e04      	subs	r4, r0, #0
 186:	da04      	bge.n	192 <run_multicore_prime.constprop.0+0x192>
 188:	f7ff fffe 	bl	0 <nxsched_get_streams>
 18c:	4949      	ldr	r1, [pc, #292]	@ (2b4 <run_multicore_prime.constprop.0+0x2b4>)
 18e:	4622      	mov	r2, r4
 190:	e744      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 192:	a90b      	add	r1, sp, #44	@ 0x2c
 194:	4628      	mov	r0, r5
 196:	f7ff fffe 	bl	0 <mptask_bind>
 19a:	1e04      	subs	r4, r0, #0
 19c:	da04      	bge.n	1a8 <run_multicore_prime.constprop.0+0x1a8>
 19e:	f7ff fffe 	bl	0 <nxsched_get_streams>
 1a2:	4945      	ldr	r1, [pc, #276]	@ (2b8 <run_multicore_prime.constprop.0+0x2b8>)
 1a4:	4622      	mov	r2, r4
 1a6:	e739      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 1a8:	4844      	ldr	r0, [pc, #272]	@ (2bc <run_multicore_prime.constprop.0+0x2bc>)
 1aa:	f7ff fffe 	bl	0 <puts>
 1ae:	4628      	mov	r0, r5
 1b0:	f7ff fffe 	bl	0 <mptask_exec>
 1b4:	1e04      	subs	r4, r0, #0
 1b6:	f105 059c 	add.w	r5, r5, #156	@ 0x9c
 1ba:	f10b 0b10 	add.w	fp, fp, #16
 1be:	da04      	bge.n	1ca <run_multicore_prime.constprop.0+0x1ca>
 1c0:	f7ff fffe 	bl	0 <nxsched_get_streams>
 1c4:	493e      	ldr	r1, [pc, #248]	@ (2c0 <run_multicore_prime.constprop.0+0x2c0>)
 1c6:	4622      	mov	r2, r4
 1c8:	e728      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 1ca:	f10a 0a01 	add.w	sl, sl, #1
 1ce:	e75e      	b.n	8e <run_multicore_prime.constprop.0+0x8e>
 1d0:	f8db 3000 	ldr.w	r3, [fp]
 1d4:	9901      	ldr	r1, [sp, #4]
 1d6:	483b      	ldr	r0, [pc, #236]	@ (2c4 <run_multicore_prime.constprop.0+0x2c4>)
 1d8:	fb05 f203 	mul.w	r2, r5, r3
 1dc:	f846 2035 	str.w	r2, [r6, r5, lsl #3]
 1e0:	f841 3035 	str.w	r3, [r1, r5, lsl #3]
 1e4:	4629      	mov	r1, r5
 1e6:	f7ff fffe 	bl	0 <printf>
 1ea:	4650      	mov	r0, sl
 1ec:	462a      	mov	r2, r5
 1ee:	2101      	movs	r1, #1
 1f0:	f7ff fffe 	bl	0 <mpmq_send>
 1f4:	1e04      	subs	r4, r0, #0
 1f6:	f10a 0a10 	add.w	sl, sl, #16
 1fa:	da04      	bge.n	206 <run_multicore_prime.constprop.0+0x206>
 1fc:	f7ff fffe 	bl	0 <nxsched_get_streams>
 200:	4931      	ldr	r1, [pc, #196]	@ (2c8 <run_multicore_prime.constprop.0+0x2c8>)
 202:	4622      	mov	r2, r4
 204:	e70a      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 206:	3501      	adds	r5, #1
 208:	e752      	b.n	b0 <run_multicore_prime.constprop.0+0xb0>
 20a:	2232      	movs	r2, #50	@ 0x32
 20c:	a903      	add	r1, sp, #12
 20e:	4650      	mov	r0, sl
 210:	f7ff fffe 	bl	0 <mpmq_timedreceive>
 214:	f110 0f74 	cmn.w	r0, #116	@ 0x74
 218:	4604      	mov	r4, r0
 21a:	d106      	bne.n	22a <run_multicore_prime.constprop.0+0x22a>
 21c:	202e      	movs	r0, #46	@ 0x2e
 21e:	f7ff fffe 	bl	0 <putchar>
 222:	3601      	adds	r6, #1
 224:	f10a 0a10 	add.w	sl, sl, #16
 228:	e74d      	b.n	c6 <run_multicore_prime.constprop.0+0xc6>
 22a:	2800      	cmp	r0, #0
 22c:	da04      	bge.n	238 <run_multicore_prime.constprop.0+0x238>
 22e:	f7ff fffe 	bl	0 <nxsched_get_streams>
 232:	4926      	ldr	r1, [pc, #152]	@ (2cc <run_multicore_prime.constprop.0+0x2cc>)
 234:	4622      	mov	r2, r4
 236:	e6f1      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 238:	200a      	movs	r0, #10
 23a:	f7ff fffe 	bl	0 <putchar>
 23e:	a807      	add	r0, sp, #28
 240:	f7ff fffe 	bl	0 <mpmutex_lock>
 244:	a807      	add	r0, sp, #28
 246:	3501      	adds	r5, #1
 248:	f7ff fffe 	bl	0 <mpmutex_unlock>
 24c:	e7e9      	b.n	222 <run_multicore_prime.constprop.0+0x222>
 24e:	4648      	mov	r0, r9
 250:	aa04      	add	r2, sp, #16
 252:	2100      	movs	r1, #0
 254:	f8cd a010 	str.w	sl, [sp, #16]
 258:	f7ff fffe 	bl	0 <mptask_destroy>
 25c:	1e04      	subs	r4, r0, #0
 25e:	f109 099c 	add.w	r9, r9, #156	@ 0x9c
 262:	da04      	bge.n	26e <run_multicore_prime.constprop.0+0x26e>
 264:	f7ff fffe 	bl	0 <nxsched_get_streams>
 268:	4919      	ldr	r1, [pc, #100]	@ (2d0 <run_multicore_prime.constprop.0+0x2d0>)
 26a:	4622      	mov	r2, r4
 26c:	e6d6      	b.n	1c <run_multicore_prime.constprop.0+0x1c>
 26e:	3601      	adds	r6, #1
 270:	e737      	b.n	e2 <run_multicore_prime.constprop.0+0xe2>
 272:	4638      	mov	r0, r7
 274:	f7ff fffe 	bl	0 <mpmq_destroy>
 278:	3401      	adds	r4, #1
 27a:	3710      	adds	r7, #16
 27c:	e740      	b.n	100 <run_multicore_prime.constprop.0+0x100>
 27e:	bf00      	nop
 280:	00000000 	.word	0x00000000
 284:	0000001c 	.word	0x0000001c
 288:	00000036 	.word	0x00000036
 28c:	0000004f 	.word	0x0000004f
 290:	0000006b 	.word	0x0000006b
 294:	00000190 	.word	0x00000190
 298:	000001e6 	.word	0x000001e6
 29c:	00000000 	.word	0x00000000
 2a0:	00000094 	.word	0x00000094
 2a4:	000000af 	.word	0x000000af
 2a8:	000000cb 	.word	0x000000cb
 2ac:	000000e9 	.word	0x000000e9
 2b0:	0000010f 	.word	0x0000010f
 2b4:	00000128 	.word	0x00000128
 2b8:	00000148 	.word	0x00000148
 2bc:	00000168 	.word	0x00000168
 2c0:	00000175 	.word	0x00000175
 2c4:	000001a3 	.word	0x000001a3
 2c8:	000001cd 	.word	0x000001cd
 2cc:	0000020c 	.word	0x0000020c
 2d0:	00000228 	.word	0x00000228
	...

Disassembly of section .text.find_primes:

00000000 <find_primes>:
   0:	1a09      	subs	r1, r1, r0
   2:	3101      	adds	r1, #1
   4:	2900      	cmp	r1, #0
   6:	dc00      	bgt.n	a <find_primes+0xa>
   8:	4770      	bx	lr
   a:	bf00      	nop
   c:	3901      	subs	r1, #1
   e:	e7f9      	b.n	4 <find_primes+0x4>

Disassembly of section .text.mount_romfs:

00000000 <mount_romfs>:
   0:	b530      	push	{r4, r5, lr}
   2:	b095      	sub	sp, #84	@ 0x54
   4:	481e      	ldr	r0, [pc, #120]	@ (80 <mount_romfs+0x80>)
   6:	a905      	add	r1, sp, #20
   8:	f7ff fffe 	bl	0 <stat>
   c:	1e04      	subs	r4, r0, #0
   e:	da34      	bge.n	7a <mount_romfs+0x7a>
  10:	2400      	movs	r4, #0
  12:	481c      	ldr	r0, [pc, #112]	@ (84 <mount_romfs+0x84>)
  14:	f7ff fffe 	bl	0 <puts>
  18:	2212      	movs	r2, #18
  1a:	491b      	ldr	r1, [pc, #108]	@ (88 <mount_romfs+0x88>)
  1c:	9400      	str	r4, [sp, #0]
  1e:	f44f 7300 	mov.w	r3, #512	@ 0x200
  22:	4620      	mov	r0, r4
  24:	f7ff fffe 	bl	0 <ramdisk_register>
  28:	1e02      	subs	r2, r0, #0
  2a:	da0a      	bge.n	42 <mount_romfs+0x42>
  2c:	9203      	str	r2, [sp, #12]
  2e:	f7ff fffe 	bl	0 <nxsched_get_streams>
  32:	9a03      	ldr	r2, [sp, #12]
  34:	4915      	ldr	r1, [pc, #84]	@ (8c <mount_romfs+0x8c>)
  36:	30dc      	adds	r0, #220	@ 0xdc
  38:	f7ff fffe 	bl	0 <fprintf>
  3c:	2001      	movs	r0, #1
  3e:	f7ff fffe 	bl	0 <exit>
  42:	4a13      	ldr	r2, [pc, #76]	@ (90 <mount_romfs+0x90>)
  44:	490e      	ldr	r1, [pc, #56]	@ (80 <mount_romfs+0x80>)
  46:	4813      	ldr	r0, [pc, #76]	@ (94 <mount_romfs+0x94>)
  48:	f7ff fffe 	bl	0 <printf>
  4c:	9400      	str	r4, [sp, #0]
  4e:	4a12      	ldr	r2, [pc, #72]	@ (98 <mount_romfs+0x98>)
  50:	490b      	ldr	r1, [pc, #44]	@ (80 <mount_romfs+0x80>)
  52:	480f      	ldr	r0, [pc, #60]	@ (90 <mount_romfs+0x90>)
  54:	2301      	movs	r3, #1
  56:	f7ff fffe 	bl	0 <mount>
  5a:	1e04      	subs	r4, r0, #0
  5c:	da0d      	bge.n	7a <mount_romfs+0x7a>
  5e:	f7ff fffe 	bl	0 <nxsched_get_streams>
  62:	4605      	mov	r5, r0
  64:	f7ff fffe 	bl	0 <__errno>
  68:	6803      	ldr	r3, [r0, #0]
  6a:	9300      	str	r3, [sp, #0]
  6c:	4a08      	ldr	r2, [pc, #32]	@ (90 <mount_romfs+0x90>)
  6e:	4b04      	ldr	r3, [pc, #16]	@ (80 <mount_romfs+0x80>)
  70:	490a      	ldr	r1, [pc, #40]	@ (9c <mount_romfs+0x9c>)
  72:	f105 00dc 	add.w	r0, r5, #220	@ 0xdc
  76:	f7ff fffe 	bl	0 <fprintf>
  7a:	4620      	mov	r0, r4
  7c:	b015      	add	sp, #84	@ 0x54
  7e:	bd30      	pop	{r4, r5, pc}
  80:	00000000 	.word	0x00000000
  84:	00000007 	.word	0x00000007
  88:	00000000 	.word	0x00000000
  8c:	00000028 	.word	0x00000028
  90:	0000004c 	.word	0x0000004c
  94:	00000056 	.word	0x00000056
  98:	0000008d 	.word	0x0000008d
  9c:	00000093 	.word	0x00000093

Disassembly of section .text.prime_main:

00000000 <prime_main>:
   0:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
   4:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
   8:	4607      	mov	r7, r0
   a:	f8d3 2d14 	ldr.w	r2, [r3, #3348]	@ 0xd14
   e:	4c2e      	ldr	r4, [pc, #184]	@ (c8 <prime_main+0xc8>)
  10:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ ec <prime_main+0xec>
  14:	f022 0204 	bic.w	r2, r2, #4
  18:	f8c3 2d14 	str.w	r2, [r3, #3348]	@ 0xd14
  1c:	f8d3 2d14 	ldr.w	r2, [r3, #3348]	@ 0xd14
  20:	f022 0202 	bic.w	r2, r2, #2
  24:	f8c3 2d14 	str.w	r2, [r3, #3348]	@ 0xd14
  28:	460d      	mov	r5, r1
  2a:	f7ff fffe 	bl	0 <prime_main>
  2e:	2f01      	cmp	r7, #1
  30:	4606      	mov	r6, r0
  32:	dd0e      	ble.n	52 <prime_main+0x52>
  34:	6868      	ldr	r0, [r5, #4]
  36:	f7ff fffe 	bl	0 <atoi>
  3a:	2800      	cmp	r0, #0
  3c:	d040      	beq.n	c0 <prime_main+0xc0>
  3e:	2805      	cmp	r0, #5
  40:	dc3e      	bgt.n	c0 <prime_main+0xc0>
  42:	6020      	str	r0, [r4, #0]
  44:	2f02      	cmp	r7, #2
  46:	d004      	beq.n	52 <prime_main+0x52>
  48:	68a8      	ldr	r0, [r5, #8]
  4a:	f7ff fffe 	bl	0 <atoi>
  4e:	f8c8 0000 	str.w	r0, [r8]
  52:	4b1e      	ldr	r3, [pc, #120]	@ (cc <prime_main+0xcc>)
  54:	4a1e      	ldr	r2, [pc, #120]	@ (d0 <prime_main+0xd0>)
  56:	9300      	str	r3, [sp, #0]
  58:	2180      	movs	r1, #128	@ 0x80
  5a:	4b1e      	ldr	r3, [pc, #120]	@ (d4 <prime_main+0xd4>)
  5c:	481e      	ldr	r0, [pc, #120]	@ (d8 <prime_main+0xd8>)
  5e:	f7ff fffe 	bl	0 <snprintf>
  62:	6821      	ldr	r1, [r4, #0]
  64:	481d      	ldr	r0, [pc, #116]	@ (dc <prime_main+0xdc>)
  66:	f7ff fffe 	bl	0 <printf>
  6a:	f7ff fffe 	bl	0 <prime_main>
  6e:	6822      	ldr	r2, [r4, #0]
  70:	f8d8 7000 	ldr.w	r7, [r8]
  74:	4605      	mov	r5, r0
  76:	481a      	ldr	r0, [pc, #104]	@ (e0 <prime_main+0xe0>)
  78:	4357      	muls	r7, r2
  7a:	f04f 0800 	mov.w	r8, #0
  7e:	f7ff fffe 	bl	0 <puts>
  82:	2100      	movs	r1, #0
  84:	a802      	add	r0, sp, #8
  86:	f7ff fffe 	bl	0 <gettimeofday>
  8a:	463a      	mov	r2, r7
  8c:	4641      	mov	r1, r8
  8e:	4815      	ldr	r0, [pc, #84]	@ (e4 <prime_main+0xe4>)
  90:	f7ff fffe 	bl	0 <printf>
  94:	4639      	mov	r1, r7
  96:	4640      	mov	r0, r8
  98:	f7ff fffe 	bl	0 <prime_main>
  9c:	a802      	add	r0, sp, #8
  9e:	f7ff fffe 	bl	0 <prime_main>
  a2:	2164      	movs	r1, #100	@ 0x64
  a4:	4603      	mov	r3, r0
  a6:	4341      	muls	r1, r0
  a8:	462a      	mov	r2, r5
  aa:	fbb1 f1f5 	udiv	r1, r1, r5
  ae:	480e      	ldr	r0, [pc, #56]	@ (e8 <prime_main+0xe8>)
  b0:	9100      	str	r1, [sp, #0]
  b2:	6821      	ldr	r1, [r4, #0]
  b4:	f7ff fffe 	bl	0 <printf>
  b8:	4630      	mov	r0, r6
  ba:	b004      	add	sp, #16
  bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
  c0:	2305      	movs	r3, #5
  c2:	6023      	str	r3, [r4, #0]
  c4:	e7be      	b.n	44 <prime_main+0x44>
  c6:	bf00      	nop
  c8:	00000000 	.word	0x00000000
  cc:	00000006 	.word	0x00000006
	...
  dc:	0000000c 	.word	0x0000000c
  e0:	00000020 	.word	0x00000020
  e4:	00000049 	.word	0x00000049
  e8:	00000064 	.word	0x00000064
  ec:	00000000 	.word	0x00000000
