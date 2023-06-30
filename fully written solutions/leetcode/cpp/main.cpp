#include "two_sum.hpp"
#include "remove_nth_from_end_of_list.hpp"
#include "linked_list_cycle.hpp"
#include <iostream>

int main() {
    twoSum({2,7,11,15}, 9);
    
    RemoveListNode* removeHead { NULL };
    push(&removeHead, 1);
    push(&removeHead, 2);
    push(&removeHead, 3);
    push(&removeHead, 4);
    push(&removeHead, 5);
    removeNthFromEnd(removeHead, 4);
    
    
    struct CycleListNode *lastCycle = NULL;
    lastCycle = addToEmpty(lastCycle, 3);
    lastCycle = addEnd(lastCycle, 2);
    lastCycle = addEnd(lastCycle, 0);
    lastCycle = addEnd(lastCycle, -4);
    hasCycle(lastCycle);
    
    return 0;
}
