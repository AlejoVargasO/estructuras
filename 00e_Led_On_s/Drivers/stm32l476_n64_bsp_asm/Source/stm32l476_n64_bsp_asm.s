.include "stm32l476_n64_bsp_asm_h.s"

.section .text.BSP_LD2_Init
.type	BSP_LD2_Init,%function
BSP_LD2_Init:
	push {lr}
	movw r0,1
	bl MSP_RCC_AHB2ENR_Init

	ldr r0, =GPIOA_BASE
	movw r1,(1<<10)
	movw r2,(1<<11)
	bl MSP_GPIO_MODER_Init
	pop {lr}
	bx lr
.size BSP_LD2_Init,.-BSP_LD2_Init

.section .text.BSP_LD2_Set
.type	BSP_LD2_Set,%function
BSP_LD2_Set:
	push {lr}
	ldr r0, =GPIOA_BASE
	movw r1,(1<<5)
	bl MSP_GPIO_Set
	pop {lr}
	bx lr
.size BSP_LD2_Set,.-BSP_LD2_Set

.section .text.BSP_LD2_Clear
.type	BSP_LD2_Clear,%function
BSP_LD2_Clear:
	push {lr}
	ldr r0, =GPIOA_BASE
	movw r1,(1<<5)
	bl MSP_GPIO_Clear
	pop {lr}
	bx lr
.size BSP_LD2_Clear,.-BSP_LD2_Clear

.section .text.BSP_LD2_Toggle
.type	BSP_LD2_Toggle,%function
BSP_LD2_Toggle:
	push {lr}
	ldr r0, =GPIOA_BASE
	movw r1,(1<<5)
	bl MSP_GPIO_Toggle
	pop {lr}
	bx lr
.size BSP_LD2_Toggle,.-BSP_LD2_Toggle
