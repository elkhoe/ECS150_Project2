#include <assert.h>
#include <signal.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

#include "context.h"
#include "preempt.h"
#include "queue.h"
#include "uthread.h"

typedef enum{
  INIT,
  READY,
  RUNNING,
  BLOCKED,
  FINISHED,
  WAITING
}thread_state;

typedef struct TCB { //FIXME maybe change some values
  thread_state state;
  int retval;
  uthread_t TID;
  uthread_t collected;
  uthread_t collecting;
  uthread_ctx_t *context;
  void *stack_ptr;

}uthread_TCB;

//global vars
uthread_t TID;
queue_t current_queue;
//uthread_TCB *previous_block = 0; //not sure if needed
uthread_TCB *current_block = 0;

int TID_find(void *data, void* arg)
{
  uthread_TCB *TCB = (uthread_TCB *) data;

  if(TCB->TID == TID){
    return 1;
  }
  return 0;
}

//first instantiation of uthread
int uthread_init()
{
  if(current_block == 0)
  {
    return -1;
  }
  return 0;
}

/*------PULIC API-------*/
void uthread_yield(void)
{
  uthread_TCB *store_block;
  void *ptr;

  if(current_block->state == RUNNING)
  {
    current_block->state = READY;
  }

  current_block->state = READY;

  preempt_disable();

  queue_enqueue(current_queue, current_block);
  queue_dequeue(current_queue, &ptr);

  if(queue_length(current_queue) == 0)
  {
    queue_destroy(current_queue);
    current_queue = NULL;
  }

  store_block = current_block;
  current_block = (uthread_TCB*)ptr;

  current_block->state = RUNNING;

  preempt_enable();

  uthread_ctx_switch(current_block->context, store_block->context);
}

uthread_t uthread_self(void) { return current_block->TID; } //return TID

uthread_TCB allocate(thread_state state, uthread_t TID) {
  uthread_TCB *new_block = malloc(sizeof(uthread_TCB));

  new_block->TID = TID;
  new_block->retval = 0;
  new_block->state = state;
  new_block->collected = 0;
  new_block->collecting = 0;
  new_block->context = malloc(sizeof(uthread_ctx_t));

  if(TID == 0) {
    new_block->stack_ptr = 0;
  }
  else{
    new_block->stack_ptr = uthread_ctx_alloc_stack();
  }

  return *new_block;
}

int uthread_create(uthread_func_t func, void *arg)
{
	uthread_TCB *new_block = 0;

	preempt_start();

	if(current_block == 0)
	{
	  if(uthread_init() != 0)
      {
	    return -1;
      }
	}

	*new_block = allocate(RUNNING,new_block->TID);
	if(current_queue == 0)
    {
	  queue_create();
    }
    queue_enqueue(current_queue, new_block);

	uthread_ctx_init(&(*new_block->context),&(new_block->stack_ptr),func, arg);

	return 0;
}

void uthread_exit(int retval)
{
	preempt_disable();

    current_block->retval = retval;
	current_block->state = FINISHED;

	if(current_block->collected == -1) {

	  uthread_TCB *collecting_block;
	  collecting_block->state = READY;

	  queue_func_t find;

	  find = &TID_find;

	  queue_iterate(current_queue, find, (void*)&current_block->collected, (void**)&current_block->collecting);
	}
	uthread_yield();
}

int uthread_join(uthread_t tid, int *retval) //will utilize TID_find
{
  preempt_disable();

  //TID_find(retval, (uthread_t) tid);
  return 0;

}

