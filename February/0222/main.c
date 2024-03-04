#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_timer.h"
#include "esp_system.h"
#include "esp_log.h"
#include <sys/time.h>
#include <stdio.h>
#include "esp_sleep.h"

#define iteration 100000000

int32_t testValue = 1234;

// 任务函数原型
void task_nop(void *parameters)
{
    struct timeval tv_now;
    uint32_t r0 = 10;         // 要加载到寄存器的第一个数
    uint32_t r1 = 20;         // 要加载到寄存器的第二个数
    volatile uint32_t result; // 存储加法结果的变量

    gettimeofday(&tv_now, NULL);
    int64_t time_us_start = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;

    for (uint32_t i = 0; i < iteration; i++)
    {
        asm volatile("nop"); // 执行NOP指令
    }

    gettimeofday(&tv_now, NULL);
    int64_t time_us_end = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;
    printf("nop Operation took %lld microseconds\n", time_us_end - time_us_start);

    printf("core0 finished\n");
    fflush(stdout);    // 确保输出被立即刷新
    vTaskDelete(NULL); // 删除当前任务
}

void task_add(void *parameters)
{
    struct timeval tv_now;
    uint32_t r0 = 10; // 要加载到寄存器的第一个数
    uint32_t r1 = 20; // 要加载到寄存器的第二个数
    uint32_t result;

    gettimeofday(&tv_now, NULL);
    int64_t time_us_start = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;

    for (uint32_t i = 0; i < iteration; i++)
    {
        asm volatile("nop"); // 执行NOP指令
        result = r0 + r1;
    }

    gettimeofday(&tv_now, NULL);
    int64_t time_us_end = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;
    printf("add Operation took %lld microseconds\n", time_us_end - time_us_start);
    printf("core1 finished\n");
    fflush(stdout);    // 确保输出被立即刷新
    vTaskDelete(NULL); // 删除当前任务
}

void task_sub(void *parameters)
{
    struct timeval tv_now;
    uint32_t r0 = 10; // 要加载到寄存器的第一个数
    uint32_t r1 = 20; // 要加载到寄存器的第二个数
    uint32_t result;  // 存储加法结果的变量

    gettimeofday(&tv_now, NULL);
    int64_t time_us_start = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;

    for (uint32_t i = 0; i < iteration; i++)
    {
        asm volatile("nop"); // 执行NOP指令
        result = r0 + r1;
    }
    gettimeofday(&tv_now, NULL);
    int64_t time_us_end = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;
    printf("sub Operation took %lld microseconds\n", time_us_end - time_us_start);
    printf("core1 finished\n");
    fflush(stdout);    // 确保输出被立即刷新
    vTaskDelete(NULL); // 删除当前任务
}

void task_mul(void *parameters)
{
    struct timeval tv_now;
    uint32_t r0 = 10; // 要加载到寄存器的第一个数
    uint32_t r1 = 20; // 要加载到寄存器的第二个数
    uint32_t result;  // 存储加法结果的变量

    gettimeofday(&tv_now, NULL);
    int64_t time_us_start = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;

    for (uint32_t i = 0; i < iteration; i++)
    {
        asm volatile("nop"); // 执行NOP指令
        result = r0 * r1;
    }

    gettimeofday(&tv_now, NULL);
    int64_t time_us_end = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;
    printf("mul Operation took %lld microseconds\n", time_us_end - time_us_start);
    printf("core1 finished\n");
    fflush(stdout);    // 确保输出被立即刷新
    vTaskDelete(NULL); // 删除当前任务
}

void task_udiv(void *parameters)
{
    struct timeval tv_now;
    uint32_t r0 = 12345678; // 要加载到寄存器的第一个数
    uint32_t r1 = 12345;    // 要加载到寄存器的第二个数
    uint32_t result;  // 存储加法结果的变量

    // 获取开始时间
    int64_t start_time = esp_timer_get_time();

    for (uint32_t i = 0; i < iteration; i++)
    {
        asm volatile("nop"); // 执行NOP指令
        result = r0 / r1;
    }

    // 获取结束时间
    int64_t end_time = esp_timer_get_time();

    // 计算总耗时（单位：微秒）
    int64_t duration = end_time - start_time;

    printf("udiv Operation took %lld microseconds\n", duration);
    printf("core1 finished\n");
    printf("Result of division: %ld\n", result); // 输出除法结果，确保除法操作不会被编译器优化掉
    fflush(stdout);                             // 确保输出被立即刷新
    vTaskDelete(NULL);                          // 删除当前任务
}

void task_test(void *parameters)
{
    struct timeval tv_now;
    uint32_t r0 = 12345678; // 要加载到寄存器的第一个数
    uint32_t r1 = 2345;     // 要加载到寄存器的第二个数
    uint32_t r2 = 1246;     // 要加载到寄存器的第3个数
    uint32_t r3 = 12347;    // 要加载到寄存器的第4个数
    uint32_t r4 = 121348;   // 要加载到寄存器的第4个数
    uint32_t result;        // 存储加法结果的变量

    // 获取开始时间
    int64_t start_time = esp_timer_get_time();

    for (uint32_t i = 0; i < iteration; i++)
    {
        asm volatile("nop"); // 执行NOP指令
        result = r0 + r1;
        result = r1 - r2;
        result = r3 * r4;
        result = result / r4;
    }

    // 获取结束时间a
    int64_t end_time = esp_timer_get_time();

    // 计算总耗时（单位：微秒）
    int64_t duration = end_time - start_time;

    printf("max Operation took %lld microseconds\n", duration);
    printf("core1 finished\n");
    printf("Result of division: %ld\n", result); // 输出除法结果，确保除法操作不会被编译器优化掉
    fflush(stdout);                              // 确保输出被立即刷新
    vTaskDelete(NULL);                           // 删除当前任务
}

void task_load(void *parameters)
{
    int32_t *storage = malloc(sizeof(int32_t)); // 分配存储空间
    if (storage == NULL)
    {
        printf("Memory allocation failed\n");
        return;
    }
    *storage = 12345678; // 初始化存储空间的值
    int32_t result;
    int32_t result1;

    // 获取开始时间
    int64_t start_time = esp_timer_get_time();

    // 执行大量的加载操作
    for (int i = 0; i < iteration; i++)
    {
        asm volatile("nop"); // 执行NOP指令
        result = *storage;   // 直接使用C语言进行加载操作
        result1 = *storage; 
    }

    // 获取结束时间
    int64_t end_time = esp_timer_get_time();

    // 计算总耗时（单位：微秒）
    int64_t duration = end_time - start_time;
    free(storage); // 释放存储空间
    printf("load Operation took %lld microseconds\n", duration);
    printf("core1 finished\n");
    fflush(stdout);    // 确保输出被立即刷新
    vTaskDelete(NULL); // 删除当前任务
}

void task_store(void *parameters)
{
    int32_t value = 12345678;                   // 要存储的值
    int32_t *storage = malloc(sizeof(int32_t)); // 分配存储空间
    int32_t *storage1 = malloc(sizeof(int32_t)); // 分配存储空间
    if (storage == NULL)
    {
        printf("Memory allocation failed\n");
        return;
    }

    // 获取开始时间
    int64_t start_time = esp_timer_get_time();

    // 执行大量的存储操作
    for (int i = 0; i < iteration; i++)
    {
        asm volatile("nop"); // 执行NOP指令
        *storage = 1;    // 直接使用C语言进行存储操作
        *storage1 = 1;    // 直接使用C语言进行存储操作
    }

    // 获取结束时间
    int64_t end_time = esp_timer_get_time();

    // 计算总耗时（单位：微秒）
    int64_t duration = end_time - start_time;
    free(storage); // 释放存储空间
    printf("store Operation took %lld microseconds\n", duration);
    printf("core1 finished\n");
    fflush(stdout);    // 确保输出被立即刷新
    vTaskDelete(NULL); // 删除当前任务
}

void app_main(void)
{
    // 检查唤醒原因
    esp_sleep_wakeup_cause_t wakeup_reason;
    wakeup_reason = esp_sleep_get_wakeup_cause();

    switch (wakeup_reason)
    {
    case ESP_SLEEP_WAKEUP_TIMER: // 定时器唤醒
                                 // 创建第一个任务，绑定到核心0
        xTaskCreatePinnedToCore(
            task_nop, // 任务函数
            "Task1",       // 任务名称
            2048,          // 栈大小
            NULL,          // 传递给任务的参数
            1,             // 任务优先级
            NULL,          // 任务句柄
            0              // 指定任务运行的核心（核心0）
        );

        xTaskCreatePinnedToCore(
            task_test, // 任务函数
            "Task2",       // 任务名称
            2048,          // 栈大小
            NULL,          // 传递给任务的参数
            1,             // 任务优先级
            NULL,          // 任务句柄
            1              // 指定任务运行的核心（核心0）
        );

        break;
    case ESP_SLEEP_WAKEUP_UNDEFINED: // 非深度睡眠唤醒（例如，首次启动）
    default:
        // 配置定时器唤醒ESP32，参数为唤醒时间（微秒）
        esp_sleep_enable_timer_wakeup(1000000 * 10); // 10秒
        // 进入深度睡眠模式
        esp_deep_sleep_start();
        break;
    }
}