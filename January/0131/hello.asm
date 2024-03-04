
C:/Users/kosumosu/Desktop/hello.o:     file format elf32-littlearm


Disassembly of section .text.startup.main:

00000000 <main>:
   0:	b530      	push	{r4, r5, lr}
   2:	b091      	sub	sp, #68	@ 0x44
   4:	2103      	movs	r1, #3
   6:	a802      	add	r0, sp, #8
   8:	f7ff fffe 	bl	0 <mpmutex_init>
   c:	b118      	cbz	r0, 16 <main+0x16>
   e:	f06f 0004 	mvn.w	r0, #4
  12:	f7ff fffe 	bl	0 <wk_exit>
  16:	2200      	movs	r2, #0
  18:	2102      	movs	r1, #2
  1a:	a806      	add	r0, sp, #24
  1c:	f7ff fffe 	bl	0 <mpmq_init>
  20:	b118      	cbz	r0, 2a <main+0x2a>
  22:	f06f 0004 	mvn.w	r0, #4
  26:	f7ff fffe 	bl	0 <wk_exit>
  2a:	f44f 6200 	mov.w	r2, #2048	@ 0x800
  2e:	2101      	movs	r1, #1
  30:	a80a      	add	r0, sp, #40	@ 0x28
  32:	f7ff fffe 	bl	0 <mpshm_init>
  36:	b118      	cbz	r0, 40 <main+0x40>
  38:	f06f 0004 	mvn.w	r0, #4
  3c:	f7ff fffe 	bl	0 <wk_exit>
  40:	2100      	movs	r1, #0
  42:	a80a      	add	r0, sp, #40	@ 0x28
  44:	f7ff fffe 	bl	0 <mpshm_attach>
  48:	4604      	mov	r4, r0
  4a:	b918      	cbnz	r0, 54 <main+0x54>
  4c:	f06f 0004 	mvn.w	r0, #4
  50:	f7ff fffe 	bl	0 <wk_exit>
  54:	a901      	add	r1, sp, #4
  56:	a806      	add	r0, sp, #24
  58:	f7ff fffe 	bl	0 <mpmq_receive>
  5c:	2801      	cmp	r0, #1
  5e:	d003      	beq.n	68 <main+0x68>
  60:	f06f 0004 	mvn.w	r0, #4
  64:	f7ff fffe 	bl	0 <wk_exit>
  68:	a802      	add	r0, sp, #8
  6a:	f7ff fffe 	bl	0 <mpmutex_lock>
  6e:	9b01      	ldr	r3, [sp, #4]
  70:	eb04 02c3 	add.w	r2, r4, r3, lsl #3
  74:	a802      	add	r0, sp, #8
  76:	f854 4033 	ldr.w	r4, [r4, r3, lsl #3]
  7a:	6855      	ldr	r5, [r2, #4]
  7c:	f7ff fffe 	bl	0 <mpmutex_unlock>
  80:	4425      	add	r5, r4
  82:	42a5      	cmp	r5, r4
  84:	d215      	bcs.n	b2 <main+0xb2>
  86:	a802      	add	r0, sp, #8
  88:	f7ff fffe 	bl	0 <mpmutex_lock>
  8c:	a802      	add	r0, sp, #8
  8e:	f7ff fffe 	bl	0 <mpmutex_unlock>
  92:	a80a      	add	r0, sp, #40	@ 0x28
  94:	f7ff fffe 	bl	0 <mpshm_detach>
  98:	9a01      	ldr	r2, [sp, #4]
  9a:	2101      	movs	r1, #1
  9c:	a806      	add	r0, sp, #24
  9e:	f7ff fffe 	bl	0 <mpmq_send>
  a2:	b118      	cbz	r0, ac <main+0xac>
  a4:	f06f 0004 	mvn.w	r0, #4
  a8:	f7ff fffe 	bl	0 <wk_exit>
  ac:	2000      	movs	r0, #0
  ae:	b011      	add	sp, #68	@ 0x44
  b0:	bd30      	pop	{r4, r5, pc}
  b2:	bf00      	nop
  b4:	3401      	adds	r4, #1
  b6:	e7e4      	b.n	82 <main+0x82>
