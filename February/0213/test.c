#include "stm32f10x.h"
#include "OLED.h"
#include "string.h"
#include "stdio.h"
#include "Serial.h"
#include "Delay.h"
#include <alloca.h>

#define TRY 10
#define ITERATION 100000
#define division_ratio 256
#define wait_time 5000


#define INSTR_BODY_0(F)  do { F; } while (0)
#define INSTR_BODY_2(A,B,F)  do { F; } while (0)
#define NOINLINE  __attribute__((noinline))
#define EMPTY_BODY()  do { __asm__ __volatile__ ("" ::: "memory"); } while (0)

static unsigned int LLVM_IR__load_ui(unsigned int uiv) {    INSTR_BODY_0(uiv);  return uiv; }
static int LLVM_IR__load_si(int siv) { INSTR_BODY_0(siv); return siv; }
static float LLVM_IR__load_f(float fv) { INSTR_BODY_0(fv); return fv; }
static double LLVM_IR__load_d(double dv) { INSTR_BODY_0(dv); return dv; }
static char LLVM_IR__load_c(char cv) { INSTR_BODY_0(cv);  return cv; }
static unsigned char LLVM_IR__load_uc(unsigned char ucv) { INSTR_BODY_0(ucv); return ucv; }


volatile uint8_t sleep_flag = 0;


void Timer_Init(void) 
{
	
	
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);

    TIM_InternalClockConfig(TIM2);

    TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure;
    TIM_TimeBaseInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseInitStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInitStructure.TIM_Period = 0xFFFF;  // Adjust as needed, maximum is 65535
    TIM_TimeBaseInitStructure.TIM_Prescaler = division_ratio - 1;  // Adjust as needed
    TIM_TimeBaseInitStructure.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TIM2, &TIM_TimeBaseInitStructure);

    TIM_ClearFlag(TIM2, TIM_FLAG_Update);
    TIM_Cmd(TIM2, ENABLE);
}

void Delay_5s(void)
{
	
    TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure;
    
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
    
    TIM_TimeBaseInitStructure.TIM_Period = 50000 - 1;  // 5 seconds
    TIM_TimeBaseInitStructure.TIM_Prescaler = SystemCoreClock/10000 - 1; // 1 second per count
    TIM_TimeBaseInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseInitStructure.TIM_CounterMode = TIM_CounterMode_Up;
    
    TIM_TimeBaseInit(TIM3, &TIM_TimeBaseInitStructure);
    
    TIM_ClearFlag(TIM3, TIM_FLAG_Update);
    TIM_ITConfig(TIM3, TIM_IT_Update, ENABLE);
    
    NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_InitStructure.NVIC_IRQChannel = TIM3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_Init(&NVIC_InitStructure);
    
    TIM_Cmd(TIM3, ENABLE);
    
    while (sleep_flag == 0) {
        // Wait for the timer to reach zero
        __WFI(); // Enter low power mode
    }
    
    TIM_Cmd(TIM3, DISABLE);
    TIM_ITConfig(TIM3, TIM_IT_Update, DISABLE);
    
    sleep_flag = 0;
}


void TIM3_IRQHandler(void)
{
	
    if (TIM_GetITStatus(TIM3, TIM_IT_Update) == SET)
    {
        sleep_flag = 1;
        TIM_ClearITPendingBit(TIM3, TIM_IT_Update);
    }
}


void LLVM_IR__do_alloca(void) 
{
	
	
    volatile unsigned char * volatile pcx;
    pcx = (volatile unsigned char * volatile)alloca(64);
}

static int myfunc(void);
static int myfunc1(void);


int main(void) {
    int i,j;
    char time_str[20];
		volatile register unsigned int uix,uiy,uiz;
		volatile register float fx, fy, fz;
		volatile register unsigned int start_time, end_time, elapsed_time;
	  volatile register char cx;
		volatile register int six,siy,siz;
	
	
	
		volatile register unsigned char ucx;
    volatile register float * volatile pfx;
		volatile register double dx;
		volatile register int * volatile pix;
		static volatile unsigned long cnt_call, cnt_ret;
	
		do{
			start_time = 0;
			end_time = 0;
			elapsed_time = 0;
			
			uix = LLVM_IR__load_ui(111);
			uiy = LLVM_IR__load_ui(222);
			uiz = LLVM_IR__load_ui(333);
			fx = LLVM_IR__load_f(111.111);
			fy = LLVM_IR__load_f(222.222);
			fz = LLVM_IR__load_f(333.333);
			cx = LLVM_IR__load_c(0);
			six = LLVM_IR__load_si(1);
			siy = LLVM_IR__load_si(2);
			siz = LLVM_IR__load_si(3);
			ucx = LLVM_IR__load_uc(9);
			dx = LLVM_IR__load_d(7.8);
			
		}while(0);
	
    OLED_Init();
    Timer_Init();
		Serial_Init();
		
    while (1) {
			//²âÊÔ¿ªÊ¼
			Serial_SendString("test start\r\n");
			
			Serial_SendString("SYSCLK: ");
			Serial_SendNumber(SystemCoreClock,10);
			Serial_SendString("\r\n");
			
			Serial_SendString("division ratios = ");
			Serial_SendNumber(division_ratio,10);
			Serial_SendString("\r\n");
			Serial_SendString("ITERATION = ");
			Serial_SendNumber(ITERATION,10);
			Serial_SendString("\r\n\r\n");
			Delay_5s();

			//EMPTY_BODY
			//OLED_ShowString(1, 1, "start");
			//Delay_ms(1000);
			//OLED_Clear();
			Serial_SendString("EMPTY_BODY\r\n");
			for (j = 0; j < TRY; j++) {
			uint32_t overflow_count = 0;
					start_time = TIM_GetCounter(TIM2);
			
					for (i = 0; i < ITERATION; i++) {
							;
					// Insert a "no operation" instruction as a placeholder
					}

					end_time = TIM_GetCounter(TIM2);
					if (end_time < start_time) {
				elapsed_time = 0xFFFF - start_time + end_time;
			} else {
				elapsed_time = end_time - start_time;
			}

			//OLED_ShowNum(2, 1, elapsed_time, 16);
			
			Serial_SendString("runtime = ");
			Serial_SendNumber(elapsed_time,10);
			Serial_Printf("\r\n");
			}
				
			start_time = 0;
			end_time = 0;
			elapsed_time = 0;
			Delay_5s();
			
			//load
			//OLED_ShowString(1, 1, "start");
			//Delay_ms(1000);
			//OLED_Clear();
			Serial_SendString("load\r\n");
			for (j = 0; j < TRY; j++) {
			uint32_t overflow_count = 0;
			uint32_t value = 5; 
					start_time = TIM_GetCounter(TIM2);
			
					for (i = 0; i < ITERATION; i++) {
							__asm(
									"LDR R0, %[input]\n" 
									: 
									: [input] "m" (value) 
									: "R0" 
							);
					}

					end_time = TIM_GetCounter(TIM2);
					if (end_time < start_time) {
				elapsed_time = 0xFFFF - start_time + end_time;
			} else {
				elapsed_time = end_time - start_time;
			}

			//OLED_ShowNum(2, 1, elapsed_time, 16);
			
			Serial_SendString("runtime = ");
			Serial_SendNumber(elapsed_time,10);
			Serial_Printf("\r\n");
			}
				
			start_time = 0;
			end_time = 0;
			elapsed_time = 0;
			Delay_5s();


			//add
			//OLED_ShowString(1, 1, "start");
			////Delay_ms(1000);
			////OLED_Clear();
			Serial_SendString("add\r\n");
			for (j = 0; j < TRY; j++) {
					uint32_t overflow_count = 0;
					uint32_t a = 5; 
					uint32_t b = 10; 
					uint32_t result; 	
					start_time = TIM_GetCounter(TIM2);
			
					for (i = 0; i < ITERATION; i++) {
							__asm("ADD %[result], %[value1], %[value2]"
									: [result] "=r" (result) 
									: [value1] "r" (a), [value2] "r" (b) 
									: 
							);
					// Insert a "no operation" instruction as a placeholder
					}

					end_time = TIM_GetCounter(TIM2);
					if (end_time < start_time) {
				elapsed_time = 0xFFFF - start_time + end_time;
			} else {
				elapsed_time = end_time - start_time;
			}
			
			Serial_SendString("runtime = ");
			Serial_SendNumber(elapsed_time,10);
			Serial_Printf("\r\n");
			}
			
			start_time = 0;
			end_time = 0;
			elapsed_time = 0;
			Delay_5s();

			break;
    }
		
		//test end
		Serial_SendString("test end\r\n");
		Serial_SendString("SYSCLK: ");
		Serial_SendNumber(SystemCoreClock,10);
		Serial_SendString("\r\n");
		
}

static int myfunc(void){}
static int myfunc1(void){return 0;}

