/*
 * stm32l476_msp_rcc.s
 *
 *  Created on: Sep 12, 2022
 *      Author: gosor
 */
.include "stm32l476_msp_rcc_h.s"

.section .text.MSP_RCC_AHB2ENR_Init
.type	MSP_RCC_AHB2ENR_Init,%function
MSP_RCC_AHB2ENR_Init:
// ACTIVAR RELOJ DEL PUERTO A (bit 0 in AHB2ENR register) (RM0351, page 251)
	ldr r6, =RCC_BASE  // Carga en el registro 6 (r6) la direccion RCC_BASE (0x40021000)
	ldr r5, [r6,RCC_AHB2ENR]   // Utilizamos otro registro (r5) para sumarle el offset del registro AHB2ENR (0x4C)
	orr r5, r0   // Activamos el reloj del puerto A colocando un 1 en el bit 0 utilizando un enmascaramiento con orr
	str r5, [r6,RCC_AHB2ENR]   // Almacenamos el valor del segundo registro en el primer registro el cual contiene la direccion del registro AHB2ENR

	bx lr
.size MSP_RCC_AHB2ENR_Init,.-MSP_RCC_AHB2ENR_Init
