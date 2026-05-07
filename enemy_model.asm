# This file stores enemy-related data and sprite graphics.


# This file acts as the "data model" for enemies in the game.
# It contains: 
# - the enemy array 
# - enemy sprite graphics 
# - impact/explosion graphics


.globl enemy_image
.globl enemy_array
.globl impact_image

.data

#5 enemies occupying 15 words total
enemy_array:	.word	0:15	# 3 fields x 5 enemies

# Enemy Model: - use the enemy_struct eqvs
# active flag - offset 0
# x coord     - offset 4
# y coord     - offset 8


# A 5x5 bitmap sprite used to visually draw enemy ships.
# -1 = transparent pixel
# 0 = black
# 1 = red 
# 3 = yellow

enemy_image: .byte	# -1 = transparent

	1 -1  1 -1  1
	1  1  1  1  1
	1  3  3  3  1
    -1  1  3  1 -1
    -1 -1  1 -1 -1
	
impact_image: .byte
	7  0  7  0  7
	0  3  3  3  0
	7  3  1  3  7
	0  3  3  3  0
	7  0  7  0  7
