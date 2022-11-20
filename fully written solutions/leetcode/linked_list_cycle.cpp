#include "linked_list_cycle.hpp"
#include <iostream>

struct CycleListNode {
  int data;
  struct CycleListNode* next;
};

struct CycleListNode* addToEmpty(struct CycleListNode* last, int data) {
    if (last != NULL) return last;
    
    struct CycleListNode* newNode = (struct CycleListNode*)malloc(sizeof(struct CycleListNode));

    newNode->data = data;
    last = newNode;
    last->next = last;

    return last;
}

struct CycleListNode* addEnd(struct CycleListNode* last, int data) {
    if (last == NULL) return addToEmpty(last, data);

    struct CycleListNode* newNode = (struct CycleListNode*)malloc(sizeof(struct CycleListNode));

    newNode->data = data;
    newNode->next = last->next;
    last->next = newNode;
    last = newNode;

    return last;
}

bool hasCycle(CycleListNode* head) {
    if (head == NULL) return false;
    
    CycleListNode* slow { head };
    CycleListNode* fast { head };
    
    while (fast->next != NULL && fast->next->next != NULL)
    {
        slow = slow->next;
        fast = fast->next->next;
        
        if (slow == fast)
        {
            std::cout << "true" << std::endl;
            return true;
        }
    }
    
    std::cout << "fasle" << std::endl;
    return false;
}
