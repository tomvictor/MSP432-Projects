################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
MSP_EXP432P401R.obj: ../MSP_EXP432P401R.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/Abhijith/Documents/workshop/gpiointerrupt_MSP_EXP432P401R_TI_MSP432P401R" --include_path="C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/inc/CMSIS" --include_path="C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/inc" --include_path="C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/driverlib/MSP432P4xx" --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --advice:power=all --advice:power_severity=suppress -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --diag_warning=225 --diag_warning=255 --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="MSP_EXP432P401R.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gpiointerrupt.obj: ../gpiointerrupt.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/Abhijith/Documents/workshop/gpiointerrupt_MSP_EXP432P401R_TI_MSP432P401R" --include_path="C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/inc/CMSIS" --include_path="C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/inc" --include_path="C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/driverlib/MSP432P4xx" --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --advice:power=all --advice:power_severity=suppress -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --diag_warning=225 --diag_warning=255 --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="gpiointerrupt.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

build-1644588591: ../gpiointerrupt.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_32_00_06_core/xs" --xdcpath="C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/packages;C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/bios_6_46_00_23/packages;C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/tidrivers_msp43x_2_20_00_08/packages;C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/uia_2_00_06_52/packages;C:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4F -p ti.platforms.msp432:MSP432P401R -r release -c "C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS" --compileOptions "-mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path=\"C:/ti/ccsv6/ccs_base/arm/include\" --include_path=\"C:/ti/ccsv6/ccs_base/arm/include/CMSIS\" --include_path=\"C:/Users/Abhijith/Documents/workshop/gpiointerrupt_MSP_EXP432P401R_TI_MSP432P401R\" --include_path=\"C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/inc/CMSIS\" --include_path=\"C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/inc\" --include_path=\"C:/ti/tirex-content/tirtos_msp43x_2_20_00_06/products/msp432_driverlib_3_21_00_05/driverlib/MSP432P4xx\" --include_path=\"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include\" --advice:power=all --advice:power_severity=suppress -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --diag_warning=225 --diag_warning=255 --display_error_number --gen_func_subsections=on --abi=eabi  " "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: build-1644588591
configPkg/compiler.opt: build-1644588591
configPkg/: build-1644588591


