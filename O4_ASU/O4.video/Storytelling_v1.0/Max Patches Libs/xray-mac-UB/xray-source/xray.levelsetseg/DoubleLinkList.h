/* 
	DoubleLinkList
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 13-7-2006
*/

#include "jit.common.h"

typedef struct _Node
{
	long			pixel[2];
	
	struct _Node	*prev;
	struct _Node	*next;
} t_Node;

typedef struct _List
{
	t_Node			*firstNode;
	t_Node			*lastNode;
} t_List;

void DLLinsertAfter(t_List *list, t_Node *node, t_Node *newNode);
void DLLinsertBefore(t_List *list, t_Node *node, t_Node *newNode);
void DLLinsertBeginning(t_List *list, t_Node *newNode);
void DLLinsertEnd(t_List *list, t_Node *newNode);
void DLLremove(t_List *list, t_Node *node);
void DLLunhook(t_List *list, t_Node *node);
long DLLcountNodes(t_List *list);
void DLLcreateList(t_List **list);
void DLLfreeListNodes(t_List *list);
void DLLfreeList(t_List **list);


void DLLinsertAfter(t_List *list, t_Node *node, t_Node *newNode)
{
	newNode->prev = node;
	newNode->next = node->next;
	
	if( !(node->next) ) {
		list->lastNode =  newNode;
	}
	else {
		(node->next)->prev = newNode;
	}
	
	node->next = newNode;
}

void DLLinsertBefore(t_List *list, t_Node *node, t_Node *newNode)
{
	newNode->prev = node->prev;
	newNode->next = node;
	
	if( !(node->prev) ) {
		list->firstNode = newNode;
	}
	else {
		(node->prev)->next = newNode;
	}
	
	node->prev = newNode;
}

void DLLinsertBeginning(t_List *list, t_Node *newNode)
{
	if( !(list->firstNode) ) {
		list->firstNode = newNode;
		list->lastNode = newNode;
		newNode->prev = NULL;
		newNode->next = NULL;
	}
	else {
		DLLinsertBefore(list, list->firstNode, newNode);
	}
}

void DLLinsertEnd(t_List *list, t_Node *newNode)
{
	if( !(list->lastNode) ) {
		DLLinsertBeginning(list, newNode);
	}
	else {
		DLLinsertAfter(list, list->lastNode, newNode);
	}
}

void DLLremove(t_List *list, t_Node *node)
{
	if( !(node->prev) ) {
		list->firstNode = node->next;
	}
	else {
		(node->prev)->next = node->next;
	}
	
	if( !(node->next) ) {
		list->lastNode = node->prev;
	}
	else {
		(node->next)->prev = node->prev;
	}

	//free node (eventually need to use a memory pool)
	jit_freebytes( (void *)node, sizeof(t_Node) );
}

void DLLunhook(t_List *list, t_Node *node)
{
	if( !(node->prev) ) {
		list->firstNode = node->next;
	}
	else {
		(node->prev)->next = node->next;
	}
	
	if( !(node->next) ) {
		list->lastNode = node->prev;
	}
	else {
		(node->next)->prev = node->prev;
	}
}

long DLLcountNodes(t_List *list)
{
	t_Node *node;
	long count = 0;
	
	node = list->firstNode;
	
	while(node) {
		count++;
		node = node->next;
	}
	
	return count;
}

void DLLcreateList(t_List **list)
{
	*list = (t_List *)jit_getbytes( sizeof(t_List) );
	(*list)->firstNode = NULL;
	(*list)->lastNode = NULL;
}

void DLLfreeListNodes(t_List *list)
{
	t_Node *node,  *prevNode;
	
	node = list->firstNode;
	
	while(node) {
		prevNode = node;
		node = node->next;
		DLLremove(list, prevNode);
	}
}

void DLLfreeList(t_List **list)
{
	DLLfreeListNodes(*list);
	jit_freebytes( (void *)(*list), sizeof(t_List) );
	list = NULL;
}