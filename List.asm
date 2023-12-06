# List.asm
# Owen Gallegos

##################################################
# Functions to store arrays on the heap as a linked 
# list.
# 
# Includes indexing to traverse the list forward and
# negative indexing to traverse the list backward.
# 
# 
# 
# .globl CreateList
# in:   NULL
# out:  List address
# description:  Finds 3 words of space. Size (number of
#   elements stored on the list) is stored on the first
#   word, 2 words are needed for each list node. User's 
#   entry is stored on the next word, and the address
#   of the next node is stored on the last word (address
#   is to beginning of list).
#
# .globl DeleteList
# in:   List address
# out:  NULL
# description: Resets all stored data from list to 0
#
#
#
# .globl Add
# in:   List address, List entry
# out:  NULL
# description:  Finds 2 words of space. User's entry
#   is stored on the first word. The address of the
#   next node is stored on the last word (address is
#   is to beginning of list).
#
# .globl ReplaceAt
# in:   List address, List entry, index
# out:  0 for failure, 1 for success
# description:  Finds index and overwrites entry with
#   new List entry. If the index is not
#
# .globl GetSize
# in:   List address
# out:  number of elements in list
# description:  returns number of elements in list
#
# .global Find
# in:   List address, index
# out:  entry at list index
# description:  If index is negative, convert it to it's
#   positive index. Traverses list to index.
##################################################

.text
.globl CreateList, DeleteList, 