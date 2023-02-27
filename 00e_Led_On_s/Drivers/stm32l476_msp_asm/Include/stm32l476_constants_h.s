/*
 * stm32l476_h.s
 *
 *  Created on: Sep 12, 2022
 *      Author: gosor
 */


//
.equ	RCC_BASE, 	 	0x40021000
.equ    RCC_AHB2ENR,   	0x4C // RCC AHB2 peripheral clock reg (RM0351, page 251) Para el pueto A

// 	 GPIOA base address is 0x48000000
.equ	GPIOA_BASE, 	0x48000000 // GPIO BASE ADDRESS (RM0351, page 78)

//   RM0351, page 312 - GPIO REGISTER MAP
.equ    GPIO_MODER,   	0x00 // GPIO port mode register (RM0351, page 303)
.equ 	GPIO_OTYPER, 	0x04
.equ 	GPIO_OSPEEDR,   0x08
.equ 	GPIO_PUPDR,		0x0C
.equ 	GPIO_IDR, 		0x10
.equ    GPIO_ODR,     	0x14 // GPIO outpu data register (RM0351, page 306)
.equ 	GPIO_BSRR,		0x18
.equ	GPIO_LCKR, 		0x1C
.equ	GPIO_AFRL, 		0x20
.equ	GPIO_AFRH, 		0x24
.equ	GPIO_BRR, 		0x28
.equ	GPIO_ASCR, 		0x2C
