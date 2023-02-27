/*
 * main.s
 *
 *  Created on: Sep 12, 2022
 *      Author: gosor
 */

.include "main_h.s"

.section .text.main
.type	main,%function
main:

/*	bl BSP_LD2_Init
	bl BSP_LD2_Set
	bl BSP_LD2_Clear
*/

	bl MFS_D1_Init
	bl MFS_D2_Init
	bl MFS_D3_Init
	bl MFS_D4_Init

	bl MFS_D1_Set
	bl MFS_D2_Set
	bl MFS_D3_Set
	bl MFS_D4_Set

	bl MFS_D1_Clear
	bl MFS_D2_Clear
	bl MFS_D3_Clear
	bl MFS_D4_Clear


loop:
	//bl BSP_LD2_Toggle

	bl MFS_D1_Toggle
	bl MFS_D2_Toggle
	bl MFS_D3_Toggle
	bl MFS_D4_Toggle


	b loop
.size	main, .-main







