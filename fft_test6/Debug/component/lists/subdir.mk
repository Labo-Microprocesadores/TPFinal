################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/lists/fsl_component_generic_list.c 

OBJS += \
./component/lists/fsl_component_generic_list.o 

C_DEPS += \
./component/lists/fsl_component_generic_list.d 


# Each subdirectory must supply rules for building sources it contributes
component/lists/%.o: ../component/lists/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\Facultad\GitMicros\TpFinal\fft_test6\board" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\source" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\CMSIS_driver" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\drivers" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\utilities" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\component\serial_manager" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\component\uart" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\mdio" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\component\lists" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\phy" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\CMSIS" -I"D:\Facultad\GitMicros\TpFinal\fft_test6\device" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


