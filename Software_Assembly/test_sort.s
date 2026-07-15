# =========================================================================
# PROGRAM: 32 Signed Integer Insertion Sort with Hardware Profiling
# DESCRIPTION: Sorts an array of 32 signed integers in-place.
# Includes performance counter reads for cycle benchmarking.
# =========================================================================

.globl _start

_start:
    # ---------------------------------------------------------------------
    # BLOCK 1: Initialization and Start Profiling
    # ---------------------------------------------------------------------
    
    # 1. Start the stopwatch (Read Hardware Cycle Counter)
    rdcycle x8               # x8 = Starting clock cycle count
    
    # 2. Set up our memory pointers
    li      x10, 0x1000      # x10 = Base address of the array in Data RAM
    li      x11, 32          # x11 = Total number of elements to sort
    
    # 3. Calculate the exact end address of our array
    # 32 elements * 4 bytes per integer = 128 bytes (0x80)
    addi    x12, x10, 128    # x12 = Exact memory address where the array ends
    
    # 4. Set up our loop counter starting at the second element
    addi    x13, x10, 4      # x13 = Pointer to the current element being sorted


    # ---------------------------------------------------------------------
    # BLOCK 2: The Outer Loop (Marching down the line)
    # ---------------------------------------------------------------------
outer_loop:
    # 1. Check if we are finished!
    # Have we reached the end of the array? (Is x13 >= x12?)
    bge     x13, x12, end_sort   # Branch if Greater or Equal. If true, jump to 'end_sort'

    # 2. Pick up the current number we want to sort
    lw      x14, 0(x13)          # x14 (The Target) = Load Word from the memory address at x13

    # 3. Set up our "Look Back" pointer (Inner Loop Setup)
    # We need to compare our Target (x14) with the numbers just behind it.
    addi    x15, x13, -4         # x15 = Pointer to the integer immediately before our Target

    # =====================================================================
    # (BLOCK 3: The Inner Loop will be dropped in right here next!)
    # =====================================================================

    # 4. Move to the next number in line
    addi    x13, x13, 4          # Move our main pointer forward by 4 bytes (1 integer)
    
    # 5. Repeat the process
    j       outer_loop           # Jump back to the top of 'outer_loop'

    # =====================================================================
    # BLOCK 3: The Inner Loop (The Shifter)
    # =====================================================================
inner_loop:
    # 1. Did we reach the very front of the line?
    # If our look-back pointer (x15) goes before the start of the array (x10), stop looking!
    blt     x15, x10, insert_target  # Branch if Less Than

    # 2. Pick up the number behind us to compare
    lw      x16, 0(x15)              # x16 (Compare Value) = Load the number at desk x15

    # 3. Is the number behind us smaller than or equal to our Target (x14)?
    # If yes, our Target is already in the right spot. Stop shifting!
    ble     x16, x14, insert_target  # Branch if Less than or Equal

    # 4. If x16 is bigger, shift it one step to the right to make room!
    sw      x16, 4(x15)              # Store Word: Put x16 into the space right in front of it (x15 + 4)

    # 5. Move our look-back pointer one more step to the left to check the next person
    addi    x15, x15, -4             # x15 = x15 - 4 bytes

    # 6. Rewind and do it again
    j       inner_loop               # Jump back to the top of inner_loop

insert_target:
    # 7. We found the empty spot! Put our Target (x14) into its final, correct place.
    sw      x14, 4(x15)              # Store our Target right after where the look-back pointer stopped


    # =====================================================================
    # BLOCK 4: Stop Profiling, Calculate Cycles, and Signal Completion
    # =====================================================================
end_sort:
    # 1. Stop the stopwatch! 
    rdcycle x9               # x9 = Ending clock cycle count

    # 2. Calculate the total time taken (End - Start)
    sub     x20, x9, x8      # x20 (Total Cycles) = x9 (End) - x8 (Start)

    # 3. Prepare our Magic Flag
    # Looking at Figure 1a in your project sheet, the Status Flag is at 0x2000
    li      x21, 0x2000      # x21 = The memory address for the Status Flag
    li      x22, 0xDEADBEAF  # x22 = Our Magic Number!

    # 4. Plant the flag! Tell the ARM processor we are finished.
    sw      x22, 0(x21)      # Store "DEADBEAF" into address 0x2000

    # 5. Go to sleep
halt:
    j       halt             # Infinite loop. The processor just stays here safely.