// uint32_t find_primes(uint32_t start_val, uint32_t limit)
// {
// 	// uint32_t primes = 0;
// 	register int j = limit - start_val + 1;
// 	register int i = j;

// 	for (i; i > 0; i--)
// 	{
// 		// int x = 2;
// 		// while (x <= start_val) {
// 		//     if (start_val % x == 0)
// 		// 	break;
// 		//     x++;
// 		// }
// 		// if (x == start_val)
// 		//     primes++;
// 		asm volatile("nop");
// 	}
// 	// return primes;
// }

uint32_t find_primes(uint32_t start_val, uint32_t limit)
{
	// uint32_t primes = 0;
	volatile uint32_t test_data = 42;
	register uint32_t r4 asm("r4");

	for (; start_val <= limit; start_val++)
	{
		asm volatile("nop");
		asm volatile(
			"ldr %0, [%1]\n\t" // 执行 LDR 指令
			: "=r"(r4)
			: "r"(&test_data)
			: // 无需声明破坏的寄存器
		);
		
	}
}
