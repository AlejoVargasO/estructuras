################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/stm32l476_msp_asm/source/stm32l476_msp_gpio.s \
../Drivers/stm32l476_msp_asm/source/stm32l476_msp_rcc.s 

OBJS += \
./Drivers/stm32l476_msp_asm/source/stm32l476_msp_gpio.o \
./Drivers/stm32l476_msp_asm/source/stm32l476_msp_rcc.o 

S_DEPS += \
./Drivers/stm32l476_msp_asm/source/stm32l476_msp_gpio.d \
./Drivers/stm32l476_msp_asm/source/stm32l476_msp_rcc.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32l476_msp_asm/source/%.o: ../Drivers/stm32l476_msp_asm/source/%.s Drivers/stm32l476_msp_asm/source/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"C:/Users/aleja/OneDrive/Escritorio/Codigos ST/00e_Led_On_s/Core/Include" -I"C:/Users/aleja/OneDrive/Escritorio/Codigos ST/00e_Led_On_s/Drivers/stm32l476_msp_asm/Include" -I"C:/Users/aleja/OneDrive/Escritorio/Codigos ST/00e_Led_On_s/Drivers/stm32l476_n64_bsp_asm/Include" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-stm32l476_msp_asm-2f-source

clean-Drivers-2f-stm32l476_msp_asm-2f-source:
	-$(RM) ./Drivers/stm32l476_msp_asm/source/stm32l476_msp_gpio.d ./Drivers/stm32l476_msp_asm/source/stm32l476_msp_gpio.o ./Drivers/stm32l476_msp_asm/source/stm32l476_msp_rcc.d ./Drivers/stm32l476_msp_asm/source/stm32l476_msp_rcc.o

.PHONY: clean-Drivers-2f-stm32l476_msp_asm-2f-source

