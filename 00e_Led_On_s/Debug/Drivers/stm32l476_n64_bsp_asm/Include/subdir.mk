################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/stm32l476_n64_bsp_asm/Include/stm32l476_n64_bsp_asm_h.s 

OBJS += \
./Drivers/stm32l476_n64_bsp_asm/Include/stm32l476_n64_bsp_asm_h.o 

S_DEPS += \
./Drivers/stm32l476_n64_bsp_asm/Include/stm32l476_n64_bsp_asm_h.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32l476_n64_bsp_asm/Include/%.o: ../Drivers/stm32l476_n64_bsp_asm/Include/%.s Drivers/stm32l476_n64_bsp_asm/Include/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"C:/Users/aleja/OneDrive/Escritorio/Codigos ST/00e_Led_On_s/Core/Include" -I"C:/Users/aleja/OneDrive/Escritorio/Codigos ST/00e_Led_On_s/Drivers/stm32l476_msp_asm/Include" -I"C:/Users/aleja/OneDrive/Escritorio/Codigos ST/00e_Led_On_s/Drivers/stm32l476_n64_bsp_asm/Include" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-stm32l476_n64_bsp_asm-2f-Include

clean-Drivers-2f-stm32l476_n64_bsp_asm-2f-Include:
	-$(RM) ./Drivers/stm32l476_n64_bsp_asm/Include/stm32l476_n64_bsp_asm_h.d ./Drivers/stm32l476_n64_bsp_asm/Include/stm32l476_n64_bsp_asm_h.o

.PHONY: clean-Drivers-2f-stm32l476_n64_bsp_asm-2f-Include

