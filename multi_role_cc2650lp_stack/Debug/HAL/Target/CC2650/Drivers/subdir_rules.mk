################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
HAL/Target/CC2650/Drivers/hal_flash_wrapper.obj: C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common/hal_flash_wrapper.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" --cmd_file="C:/Users/Abhijith/Documents/workshop/ble/examples/cc2650lp/multi_role/ccs/stack/../../iar/stack/build_config.opt" --cmd_file="C:/ti/simplelink/ble_sdk_2_02_01_18/src/config/build_components.opt"  -mv7M3 --code_state=16 --abi=eabi -me -O4 --opt_for_speed=0 --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/rom" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/osal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/nv/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/nv" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/saddr" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/icall/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/controller/cc26xx/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/aes/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/npi/src" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/common/cc26xx/npi/stack" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/icall/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/profiles/roles" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/products/cc26xxware_2_24_02_17393" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -g --c99 --define=USE_ICALL --define=FLASH_ROM_BUILD --define=POWER_SAVING --define=OSAL_SNV=1 --define=INCLUDE_AES_DECRYPT --define=xPM_DISABLE_PWRDOWN --define=xTESTMODES --define=xTEST_BLEBOARD --define=OSAL_CBTIMER_NUM_TASKS=1 --define=EXT_HAL_ASSERT --define=xDEBUG_GPIO --define=xDEBUG_ENC --define=xDEBUG_SW_TRACE --define=NEAR_FUNC= --define=DATA= --define=CC26XXWARE --define=CC26XX --diag_wrap=off --diag_suppress=48 --diag_suppress=16004 --diag_warning=225 --diag_warning=2 --display_error_number --preproc_with_compile --preproc_dependency="HAL/Target/CC2650/Drivers/hal_flash_wrapper.d" --obj_directory="HAL/Target/CC2650/Drivers" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/Target/CC2650/Drivers/hal_rtc_wrapper.obj: C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common/hal_rtc_wrapper.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" --cmd_file="C:/Users/Abhijith/Documents/workshop/ble/examples/cc2650lp/multi_role/ccs/stack/../../iar/stack/build_config.opt" --cmd_file="C:/ti/simplelink/ble_sdk_2_02_01_18/src/config/build_components.opt"  -mv7M3 --code_state=16 --abi=eabi -me -O4 --opt_for_speed=0 --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/rom" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/osal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/nv/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/nv" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/saddr" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/icall/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/controller/cc26xx/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/aes/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/npi/src" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/common/cc26xx/npi/stack" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/icall/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/profiles/roles" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/products/cc26xxware_2_24_02_17393" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -g --c99 --define=USE_ICALL --define=FLASH_ROM_BUILD --define=POWER_SAVING --define=OSAL_SNV=1 --define=INCLUDE_AES_DECRYPT --define=xPM_DISABLE_PWRDOWN --define=xTESTMODES --define=xTEST_BLEBOARD --define=OSAL_CBTIMER_NUM_TASKS=1 --define=EXT_HAL_ASSERT --define=xDEBUG_GPIO --define=xDEBUG_ENC --define=xDEBUG_SW_TRACE --define=NEAR_FUNC= --define=DATA= --define=CC26XXWARE --define=CC26XX --diag_wrap=off --diag_suppress=48 --diag_suppress=16004 --diag_warning=225 --diag_warning=2 --display_error_number --preproc_with_compile --preproc_dependency="HAL/Target/CC2650/Drivers/hal_rtc_wrapper.d" --obj_directory="HAL/Target/CC2650/Drivers" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/Target/CC2650/Drivers/hal_trng_wrapper.obj: C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common/hal_trng_wrapper.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armcl" --cmd_file="C:/Users/Abhijith/Documents/workshop/ble/examples/cc2650lp/multi_role/ccs/stack/../../iar/stack/build_config.opt" --cmd_file="C:/ti/simplelink/ble_sdk_2_02_01_18/src/config/build_components.opt"  -mv7M3 --code_state=16 --abi=eabi -me -O4 --opt_for_speed=0 --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/rom" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/osal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/nv/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/nv" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/saddr" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/icall/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/controller/cc26xx/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/aes/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/components/npi/src" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/common/cc26xx/npi/stack" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/icall/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_01_18/src/profiles/roles" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/products/cc26xxware_2_24_02_17393" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/include" -g --c99 --define=USE_ICALL --define=FLASH_ROM_BUILD --define=POWER_SAVING --define=OSAL_SNV=1 --define=INCLUDE_AES_DECRYPT --define=xPM_DISABLE_PWRDOWN --define=xTESTMODES --define=xTEST_BLEBOARD --define=OSAL_CBTIMER_NUM_TASKS=1 --define=EXT_HAL_ASSERT --define=xDEBUG_GPIO --define=xDEBUG_ENC --define=xDEBUG_SW_TRACE --define=NEAR_FUNC= --define=DATA= --define=CC26XXWARE --define=CC26XX --diag_wrap=off --diag_suppress=48 --diag_suppress=16004 --diag_warning=225 --diag_warning=2 --display_error_number --preproc_with_compile --preproc_dependency="HAL/Target/CC2650/Drivers/hal_trng_wrapper.d" --obj_directory="HAL/Target/CC2650/Drivers" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


