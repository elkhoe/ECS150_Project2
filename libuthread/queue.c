#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "queue.h"

//queue_t is a pointer to the struct queue
typedef struct node {
  struct node *next;
  void *data;
}node;

struct queue {
	struct node *head;
	struct node *tail;
	int size;
};

queue_t queue_create(void)
{
	queue_t q;
	//initialize queue structure
	q = malloc(sizeof(struct queue));

	//initialize queue data
	q->head = malloc(sizeof(struct node));
	q->tail = malloc(sizeof(struct node));

	q->head = 0;
	q->tail = 0;
	q->size = 0;

	q->tail = q->head; //point tail to head

	return q;
}

int isEmpty(const struct queue *q) { //FIXME
  return (q->head == 0);
}

int queue_destroy(queue_t queue)
{
	if(queue == NULL || queue->size != 0) {
	  return -1;
	}
	else {
	  free(queue->head);
	  free(queue);
	}
	return 0;
}

int queue_enqueue(queue_t queue, void *data)
{
    if(queue == NULL || data == NULL) { //checks if queue or data is null
      return -1;
    }

	struct node *new;
	new = malloc(sizeof(struct node));

    //initializing new element in queue
	new->data = data;
	new->next = 0;

	if(queue->head == 0){
	  queue->head = new;
	}
	else {
	  queue->tail->next = new;
	}
	queue->size += 1;
	return 0;
}

int queue_dequeue(queue_t queue, void **data) {
  if(queue == NULL || data == NULL) {
    return -1;
  }

  struct node *remove;

  *data = queue->head->data;

  remove = queue->head;
  queue->head = remove->next;

  queue->size -= 1;

  free(remove);

  return 0;
}


int queue_delete(queue_t queue, void *data)
{
	if(queue == NULL || data == NULL) {
	  return -1;
	}

	node *current = queue->head;
	if(current->data == data) {
	  void *ptr;
	  queue_dequeue(queue, &ptr);
	}
	else { //FIXME: change
	  while(current != NULL) {
        if (current->next != NULL && current->next->data == data) {
          node *delete = current->next;
          current->next = current->next->next;
          queue->size -= 1;
          free(delete);
          break;
        }
        current = current->next;
	  }
	  return -1;
	}
	return 0;
}

int queue_iterate(queue_t queue, queue_func_t func, void *arg, void **data)
{
  if(queue == NULL || data == NULL) {
    return -1;
  }

  if(isEmpty(queue)) {
    return 0;
  }

  node *current = queue->head;

  while(current != NULL) {
    if((*func)(current->data, arg) == 1) {

      if (data != NULL) {
        *data = current->data;
        return 1;
      }
    }
    current = current->next; //iterate to the next node
  }
  return 0;
}

int queue_length(queue_t queue)
{
  if(queue == 0)
    return -1;
  else
    return queue->size;
}

