
# This program sorts exactly 32 signed 32-bit integers stored in Data BRAM
# using insertion sort. It is written for the hardware-in-the-loop setup
# used on the PYNQ-Z2 board.

# What the program does:
# 1. Reads the 32 integers from memory.
# 2. Sorts them in ascending order, treating the values as signed numbers.
# 3. Writes the magic completion value 0xCAFEBABE to the DONE flag address.
# 4. Stops in an infinite loop after finishing.

# Memory map used by the project:
# - 0x1000 : base address of the input/output array in Data BRAM
# - 0x2000 : DONE/status flag location

# Register usage:
# x10 = base address of the array
# x11 = number of elements
# x12 = end address of the array
# x13 = pointer to the current element in the outer loop
# x14 = key value currently being inserted
# x15 = pointer used in the backward inner loop
# x16 = temporary value loaded from memory for comparison
# x17 = comparison flag
# x21 = DONE flag address
# x22 = magic completion value

# Algorithm:
#  Insertion sort, In-place sorting, Signed comparison using slt and branch instructions


    .text
    .globl _start

_start:
    # Load the base address of the array.
    # The array starts at address 0x1000 in Data BRAM.
    lui     x10, 0x1

    # Load the number of elements to sort.
    # The task requires sorting exactly 32 signed integers.
    addi    x11, x0, 32

    # Compute the end address of the array.
    # 32 integers * 4 bytes each = 128 bytes.
    addi    x12, x10, 128

    # Set the outer-loop pointer to the second element.
    # Insertion sort begins by considering the second item.
    addi    x13, x10, 4

outer_loop:
    # Check if we have reached the end of the array. If x13 >= x12, sorting is complete.
    bge     x13, x12, done_sort

    # Load the current value that we want to insert into the sorted part.
    lw      x14, 0(x13)

    # Set the inner-loop pointer to the element just before the current one.
    addi    x15, x13, -4

inner_loop:
    # If the pointer moved before the start of the array,
    # then the key must be inserted at the beginning.
    slt     x17, x15, x10
    bne     x17, x0, insert_key

    # Load the previous element for comparison.
    lw      x16, 0(x15)

    # Compare previous value with the key.
    # If previous value <= key, the correct position is found.
    slt     x17, x14, x16
    beq     x17, x0, insert_key

    # Otherwise shift the larger value one position to the right.
    sw      x16, 4(x15)

    # Move one element left and continue searching.
    addi    x15, x15, -4
    j       inner_loop

insert_key:
    # Place the key into its final sorted position.
    sw      x14, 4(x15)

    # Move to the next element in the outer loop.
    addi    x13, x13, 4
    j       outer_loop

done_sort:
    # Write the magic completion value to the DONE flag location.
    # The Python notebook waits for 0xCAFEBABE at address 0x2000.
    lui     x21, 0x2
    lui     x22, 0xCAFEC
    addi    x22, x22, 0xABE
    sw      x22, 0(x21)

halt:
    # Stay here forever after finishing.
    j       halt
