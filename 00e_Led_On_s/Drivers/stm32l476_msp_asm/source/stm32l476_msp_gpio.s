/*
 * stm32l476_msp_gpio.s
 *
 *  Created on: Sep 12, 2022
 *      Author: gosor
 */
.include "stm32l476_msp_gpio_h.s"

.section .text.MSP_GPIO_MODER_Init
.type	MSP_GPIO_MODER_Init,%function
MSP_GPIO_MODER_Init:
// CONFIGURAR EL PIN 5 COMO SALIDA (01) (bits 1:0 in MODER register)
	ldr r4, [r0,GPIO_MODER]   // Utilizamos otro registro(r5) para sumarle el offset del registro MODER(0x00)
	orr r4, r1
	bic r4, r2
	str r4, [r0,GPIO_MODER]	 // Cargamos el valor del segundo registro en el primero el cual contiene la direccion GPIOA MODER register

	bx lr
.size MSP_GPIO_MODER_Init,.-MSP_GPIO_MODER_Init

.section .text.MSP_GPIO_Set
.type	MSP_GPIO_Set,%function
MSP_GPIO_Set:
	str r1, [r0,GPIO_BSRR]
	bx lr
.size MSP_GPIO_Set,.-MSP_GPIO_Set

.section .text.MSP_GPIO_Clear
.type	MSP_GPIO_Clear,%function
MSP_GPIO_Clear:
	str r1, [r0,GPIO_BRR]
	bx lr
.size MSP_GPIO_Clear,.-MSP_GPIO_Clear

.section .text.MSP_GPIO_Toggle
.type	MSP_GPIO_Toggle,%function
MSP_GPIO_Toggle:
	ldr r4, [r0,GPIO_ODR]   // Utilizamos otro registro(r5) para sumarle el offset del registro ODR(0x14)
	eor r4, r1      // Colocamos en 1 el bit 5 que corresponde al pin 5
	str r4, [r0,GPIO_ODR]	 // Cargamos el valor del segundo registro en el primero el cual contiene la direccion GPIOA ODR register
	bx lr
.size MSP_GPIO_Toggle,.-MSP_GPIO_Toggle
