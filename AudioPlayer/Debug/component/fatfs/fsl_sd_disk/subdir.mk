################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/fatfs/fsl_sd_disk/fsl_sd_disk.c 

OBJS += \
./component/fatfs/fsl_sd_disk/fsl_sd_disk.o 

C_DEPS += \
./component/fatfs/fsl_sd_disk/fsl_sd_disk.d 


# Each subdirectory must supply rules for building sources it contributes
component/fatfs/fsl_sd_disk/%.o: ../component/fatfs/fsl_sd_disk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DSD_ENABLED -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\board" -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\component\fatfs" -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\drivers\sdmmc" -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\source" -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\drivers" -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\utilities" -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\component\lists" -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\CMSIS" -I"D:\Facultad\GitMicros\TpFinal\AudioPlayer\device" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

