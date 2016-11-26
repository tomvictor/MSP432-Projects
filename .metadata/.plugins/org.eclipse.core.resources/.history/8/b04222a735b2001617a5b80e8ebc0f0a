#include "driverlib.h"
#include "math.h"

extern void ftoa(char *, int );
uint8_t ADC_Done=0;
float tempC;
float tempF;

const eUSCI_UART_Config uartConfig =
{
        EUSCI_A_UART_CLOCKSOURCE_SMCLK,          // SMCLK Clock Source
        78,                                     // BRDIV = 78
        2,                                       // UCxBRF = 2
        0,                                       // UCxBRS = 0
        EUSCI_A_UART_NO_PARITY,                  // No Parity
        EUSCI_A_UART_LSB_FIRST,                  // LSB First
        EUSCI_A_UART_ONE_STOP_BIT,               // One stop bit
        EUSCI_A_UART_MODE,                       // UART mode
        EUSCI_A_UART_OVERSAMPLING_BAUDRATE_GENERATION  // Oversampling
};

int main(void) 
{
    WDT_A_holdTimer();

    /* Setting DCO to 12MHz */
    CS_setDCOCenteredFrequency(CS_DCO_FREQUENCY_12);

    /* Enabling the FPU with stacking enabled (for use within ISR) */
    FPU_enableModule();
    FPU_enableLazyStacking();

    /* Initializing ADC (MCLK/1/1) with temperature sensor routed */
    ADC14_enableModule();
    ADC14_initModule(ADC_CLOCKSOURCE_MCLK, ADC_PREDIVIDER_1, ADC_DIVIDER_1,
            ADC_TEMPSENSEMAP);

    /* Configuring ADC Memory (ADC_MEM0 A22 (Temperature Sensor) in repeat
     * mode).
     */
    ADC14_configureSingleSampleMode(ADC_MEM0, true);
    ADC14_configureConversionMemory(ADC_MEM0, ADC_VREFPOS_INTBUF_VREFNEG_VSS,
            ADC_INPUT_A22, false);

    /* Configuring the sample/hold time for TBD */
    ADC14_setSampleHoldTime(ADC_PULSE_WIDTH_192,ADC_PULSE_WIDTH_192);

    /* Enabling sample timer in auto iteration mode and interrupts*/
    ADC14_enableSampleTimer(ADC_MANUAL_ITERATION);
    ADC14_enableInterrupt(ADC_INT0);

    /* Setting reference voltage to 2.5 and enabling temperature sensor */
    REF_A_setReferenceVoltage(REF_A_VREF2_5V);
    REF_A_enableReferenceVoltage();
    REF_A_enableTempSensor();

    /* Enabling Interrupts */
    Interrupt_enableInterrupt(INT_ADC14);
 //   Interrupt_enableMaster();

    /* Triggering the start of the sample */
    ADC14_enableConversion();
    ADC14_toggleConversionTrigger();

    /* Selecting P1.2 and P1.3 in UART mode */
    MAP_GPIO_setAsPeripheralModuleFunctionInputPin(GPIO_PORT_P1,
            GPIO_PIN1 | GPIO_PIN2 | GPIO_PIN3, GPIO_PRIMARY_MODULE_FUNCTION);



    /* Configuring UART Module */
    MAP_UART_initModule(EUSCI_A0_BASE, &uartConfig);

    /* Enable UART module */
    MAP_UART_enableModule(EUSCI_A0_BASE);

    /* Enabling interrupts */
    MAP_UART_enableInterrupt(EUSCI_A0_BASE, EUSCI_A_UART_RECEIVE_INTERRUPT);
    MAP_UART_enableInterrupt(EUSCI_A0_BASE, EUSCI_A_UART_TRANSMIT_INTERRUPT);
    MAP_Interrupt_enableInterrupt(INT_EUSCIA0);

    MAP_Interrupt_enableMaster();

    /* Going to sleep */
    while (1)
    {

    }

}

/* This interrupt happens every time a conversion has completed. Since the FPU
 * is enabled in stacking mode, we are able to use the FPU safely to perform
 * efficient floating point arithmetic.*/
void ADC14_IRQHandler(void)
{
    uint64_t status;
    uint32_t cal30, cal85;
	int32_t temp;

    status = ADC14_getEnabledInterruptStatus();
    ADC14_clearInterruptFlag(status);

    if(status & ADC_INT0)
    {
        cal30 = SysCtl_getTempCalibrationConstant(SYSCTL_2_5V_REF,
                SYSCTL_30_DEGREES_C);
        cal85 = SysCtl_getTempCalibrationConstant(SYSCTL_2_5V_REF,
                SYSCTL_85_DEGREES_C);
        temp  = (uint32_t) ADC14_getResult(ADC_MEM0);
        temp = temp-cal30;

        tempC = ((float)( temp * (85 - 30))/(float)(cal85 - cal30)) + 30.0f;
        tempF = tempC * 9.0f / 5.0f + 32.0f;
        ADC_Done=1;
    }

}

/* EUSCI A0 UART ISR - Echoes data back to PC host */
void EUSCIA0_IRQHandler(void)
{
    static char strTemp[8];
    static index=0;
	uint32_t status = MAP_UART_getEnabledInterruptStatus(EUSCI_A0_BASE);

    MAP_UART_clearInterruptFlag(EUSCI_A0_BASE, status);

    if(status & EUSCI_A_UART_RECEIVE_INTERRUPT_FLAG)
        {
    	ADC14_toggleConversionTrigger();
    	    while(!ADC_Done);
    	    ftos(strTemp,3);
    	    strTemp[6]='\n';
    	    strTemp[7]='\r';
    	    MAP_UART_transmitData(EUSCI_A0_BASE, strTemp[0]);
        }
    if(status & EUSCI_A_UART_TRANSMIT_INTERRUPT_FLAG)
            {
               index++;
               if(index==8)
               {index=0;
               }
               else
               MAP_UART_transmitData(EUSCI_A0_BASE, strTemp[index]);
            }

}
