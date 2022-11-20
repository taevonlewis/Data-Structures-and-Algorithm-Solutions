#ifndef linked_list_cycle_hpp
#define linked_list_cycle_hpp

struct CycleListNode;
struct CycleListNode* addToEmpty(struct CycleListNode* last, int data);
struct CycleListNode* addEnd(struct CycleListNode* last, int data);
bool hasCycle(CycleListNode* head);

#endif /* linked_list_cycle_hpp */
