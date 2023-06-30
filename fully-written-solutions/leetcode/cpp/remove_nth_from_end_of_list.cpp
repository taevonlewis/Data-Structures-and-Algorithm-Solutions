#include "remove_nth_from_end_of_list.hpp"
#include <iostream>

struct RemoveListNode {
    int val;
    struct RemoveListNode* next;
};

void push(RemoveListNode** head_ref, int new_data)
{
    
    RemoveListNode* new_node = new RemoveListNode();
 
    new_node->val = new_data;
 
    new_node->next = (*head_ref);
 
    (*head_ref) = new_node;
}

RemoveListNode* removeNthFromEnd(RemoveListNode* head, int n) {
    if (head->next == NULL) return NULL;
    
    RemoveListNode* slow { head };
    RemoveListNode* fast { head };
    
    while (n > 0)
    {
        fast = fast->next;
        --n;
    }
    
    if (fast == NULL) return head->next;
    
    while (fast->next != NULL && fast->next != NULL)
    {
        slow = slow->next;
        fast = fast->next;
    }
    
    /*   PRINT REMOVED VALUE
    std::cout << "REMOVED VAL: " << slow->next->val << std::endl;
     */
    
    slow->next = slow->next->next;
    
    
    /* REVERSE AND PRINT FUNCTIONS TO VIEW LIST IN PROPER ORDER */
    RemoveListNode* prev { NULL };
    RemoveListNode* curr { head };
    RemoveListNode* next { curr->next };
    
    while (curr != NULL)
    {
        next = curr->next;
        curr->next = prev;
        prev = curr;
        curr = next;
    }
    
    while (prev != NULL)
    {
        std::cout << prev->val << "->";
        if (prev->next == NULL)
        {
            std::cout << std::endl;
            break;
        }
        prev = prev->next;
    }
    
    return head;
}
