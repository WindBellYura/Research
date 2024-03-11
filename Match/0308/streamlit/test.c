#include <stdint.h>
#include <stdio.h>

#define ITERATION 10000

volatile uint32_t start, end;
uint32_t total_cycles, processor_clock_frequency, execution_time;

void enable_dwt()
{
    // 启用DWT寄存器
    volatile uint32_t *DEMCR = (volatile uint32_t *)0xE000EDFC;
    *DEMCR |= (1 << 24); // 设置 DEMCR 的 TRCENA 位以启用调试和跟踪

    volatile uint32_t *DWT_CTRL = (volatile uint32_t *)0xE0001000;
    *DWT_CTRL |= 1; // 启用 CYCCNT

    volatile uint32_t *DWT_CYCCNT = (volatile uint32_t *)0xE0001004;
    *DWT_CYCCNT = 0; // 重置 CYCCNT 的值
}

void start_timing()
{
    // 开始计时
    volatile uint32_t *DWT_CYCCNT = (volatile uint32_t *)0xE0001004;
    start = *DWT_CYCCNT;
    printf("start_timing: %u\n", start);
}

void stop_timing()
{
    // 停止计时
    volatile uint32_t *DWT_CYCCNT = (volatile uint32_t *)0xE0001004;
    end = *DWT_CYCCNT;
    printf("end_timing: %u\n", end);
}


// 定义打印地址函数
void printValueAtAddress(uint32_t address)
{
    // 声明一个指向目标内存地址的指针
    volatile uint32_t *target_address;

    // 声明一个变量来存储从目标地址读取的值
    uint32_t stored_value;

    // 将传入的地址赋给目标地址指针
    target_address = (volatile uint32_t *)address;

    // 从目标地址读取值
    stored_value = *target_address;

    // 使用 printf 打印存储的值
    printf("Value at address [%08X]: %d\n", address, stored_value);
}
// 定义执行时间
void print_execution_time()
{
    // 计算总时钟周期
    total_cycles = end - start;

    // 获取处理器时钟频率（根据实际情况修改）
    processor_clock_frequency = 16000000; // 根据实际情况修改处理器时钟频率

    // 计算执行时间（微秒）
    execution_time = total_cycles / (processor_clock_frequency / 1000000);

    printf("Execution Time: %u cycles\n", total_cycles);
    printf("Execution Time: %u microseconds\n\n", execution_time);
}

int main()
{
    printf("Iteration:%d\n", ITERATION);


    // 启用DWT寄存器
    enable_dwt();

    volatile uint32_t uia = 10;
    volatile uint32_t uib = 30;
    volatile uint32_t uic = 20;
    volatile uint32_t uid = 40;
    volatile uint32_t uie = 5;
    volatile uint32_t result;

    // empty_body
    printf("Test Code\n");
    {
        // 开始计时
        start_timing();

        // 执行迭代
        for (int i = 0; i < ITERATION; i++)
        {
            result = uia + uib;
            result = result - uic;
            result = result * uid;
            result = result / uie;
        }

        // 停止计时
        stop_timing();
        print_execution_time();
        printf("result=%d\n",result);
    }
    // load

    return 0;
}