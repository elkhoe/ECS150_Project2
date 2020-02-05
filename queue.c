#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "queue.h"

//queue_t is a pointer to the struct queue
typedef struct node {
  struct node *next;
  void *value
};
struct queue {
	/* TODO Phase 1 */
	struct node *head;
	struct node *tail;
	int size;
};

queue_t queue_create(void)
{
	/* TODO Phase 1 */
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
	/* TODO Phase 1 */

}

int queue_enqueue(queue_t queue, void *data)
{
	/* TODO Phase 1 */
	struct node *val;
	val = malloc(sizeof(struct node));
}

int queue_dequeue(queue_t queue, void **data)
{
	/* TODO Phase 1 */
}

int queue_delete(queue_t queue, void *data)
{
	/* TODO Phase 1 */
}

int queue_iterate(queue_t queue, queue_func_t func, void *arg, void **data)
{
	/* TODO Phase 1 */
}

int queue_length(queue_t queue)
{
  if(queue == NULL)
    return -1;
  else
    return queue->size;
}

