#pragma once

/* How many worker CPUs to run the same instance from*/
/* 有多少个工作 CPU 来运行同一个实例*/
//总执行次数=N_CPU*PRIME_LIMIT
//for test = 3,000,000,000
//load test = 3,000,000,00
#define N_CPU 3

#define KEY_SHM   1
#define KEY_MQ    2
/* One mutex for all CPUs, probably unnecessary since we are not using shared data between the various worker instances. */
/* 所有 CPU 都有一个互斥体，这可能是不必要的，因为我们没有在各个工作实例之间使用共享数据。 */
#define KEY_MUTEX 3

#define PRIME_LIMIT 100000000




// typedef struct {
//     uint32_t start;         /* Range start. *//* 范围开始。 */
//     uint32_t n;             /* Range amount of numbers. *//* 数字的范围。 */
//     uint32_t primes_found;  /* Result: The amount of prime values found in the range [start:start+n] *//* 结果：在 [start:start+n] 范围内找到的素数数量 */
// } prime_data_t;
typedef struct {
    uint32_t start;         /* Range start. *//* 范围开始。 */
    uint32_t n;             /* Range amount of numbers. *//* 数字的范围。 */
} for_data_t;

/* Struct holding the data that is being shared between the CPU:s. *//* 保存在 CPU 之间共享的数据的结构。 */
typedef struct {
    for_data_t prime[N_CPU];
} shared_data_t;
