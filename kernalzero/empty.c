/*
 *  ======== empty.c ========
 */

/* XDCtools Header files */
#include <xdc/std.h>
#include <xdc/runtime/System.h>

/* BIOS Header files */
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Swi.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/sysbios/knl/Semaphore.h>

/* TI-RTOS Header files */
#include "driverlib.h"
#include <ti/drivers/GPIO.h>
#include <xdc/cfg/global.h>


/* Board Header file */
#include "Board.h"

#define TASKSTACKSIZE   512

Task_Struct task0Struct;
Char task0Stack[TASKSTACKSIZE];


/* Application Defines  */
#define TIMER_PERIOD    0xFFFF

//void TimerISR(void);
//void swi0Fxn(void);

Swi_Struct swi0Struct;
Swi_Handle swi0Handle;



/* Timer_A UpMode Configuration Parameter */
const Timer_A_UpModeConfig upConfig =
{
		TIMER_A_CLOCKSOURCE_ACLK,              // aclk Clock Source
        TIMER_A_CLOCKSOURCE_DIVIDER_10,          // SMCLK/1 = 3MHz
        TIMER_PERIOD,                           // 5000 tick period
        TIMER_A_TAIE_INTERRUPT_DISABLE,         // Disable Timer interrupt
        TIMER_A_CCIE_CCR0_INTERRUPT_ENABLE ,    // Enable CCR0 interrupt
        TIMER_A_DO_CLEAR                        // Clear value
};



/*
 *  ======== heartBeatFxn ========
 *  Toggle the Board_LED0. The Task_sleep is determined by arg0 which
 *  is configured for the heartBeat Task instance.
 */
void heartBeatFxn(UArg arg0, UArg arg1)
{
    while (1) {
        Task_sleep((UInt)arg0);
        GPIO_toggle(Board_LED0);
    }
}

void TimerISR()
{
//	GPIO_toggle(Board_LED1);
//		GPIO_toggleOutputOnPin(GPIO_PORT_P2,GPIO_PIN2) ;
//		MAP_Timer_A_clearCaptureCompareInterrupt(TIMER_A1_BASE,
//		            TIMER_A_CAPTURECOMPARE_REGISTER_0);

	Swi_post(swi0Handle) ;
	//Swi_post(swi0Handle);

}



void swi0Fxn()
{
	GPIO_toggle(Board_LED1);
	GPIO_toggleOutputOnPin(GPIO_PORT_P2,GPIO_PIN2) ;
	MAP_Timer_A_clearCaptureCompareInterrupt(TIMER_A1_BASE,
	            TIMER_A_CAPTURECOMPARE_REGISTER_0);

	//Swi_dec(swi0Handle);

}



/*
 *  ======== main ========
 */

int main(void)
{
    Task_Params taskParams;

    /* Call board init functions */
    Board_initGeneral();
    Board_initGPIO();

    /* Construct heartBeat Task  thread */
    Task_Params_init(&taskParams);
    taskParams.arg0 = 1000;
    taskParams.stackSize = TASKSTACKSIZE;
    taskParams.stack = &task0Stack;
    Task_construct(&task0Struct, (Task_FuncPtr)heartBeatFxn, &taskParams, NULL);

    /* Turn on user LED */
    GPIO_write(Board_LED0, Board_LED_OFF);
    GPIO_write(Board_LED1, Board_LED_OFF);
    GPIO_setAsOutputPin(GPIO_PORT_P2,GPIO_PIN2) ;
    GPIO_setOutputHighOnPin(GPIO_PORT_P2,GPIO_PIN2 ) ;

    System_printf("Starting the example\nSystem provider is set to SysMin. "
                  "Halt the target to view any SysMin contents in ROV.\n");
    /* SysMin will only print to the console when you call flush or exit */

    // Code by Tom

    MAP_Timer_A_configureUpMode(TIMER_A1_BASE, &upConfig);

    MAP_Interrupt_enableInterrupt(INT_TA1_0);

    MAP_Timer_A_startCounter(TIMER_A1_BASE, TIMER_A_UP_MODE);

    //dynamic swi declaration
    Swi_Params swiParams;

    Swi_Params_init(&swiParams);
    swiParams.arg0 = 1;
    swiParams.arg1 = 0;
    swiParams.priority = 2;
    swiParams.trigger = 0;

    Swi_construct(&swi0Struct, (Swi_FuncPtr)swi0Fxn, &swiParams, NULL);
    swi0Handle = Swi_handle(&swi0Struct);



    System_flush();

    /* Start BIOS */
    BIOS_start();

    return (0);
}

