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

}

/*------PULIC API-------*/
void uthread_yield(void)
{
  uthread_TCB *next_block;
  current_block->state = READY;

  preempt_disable();

  uthread_ctx_switch(current_block->context, next_block->context);
  if(current_block->state == RUNNING)
  {
    current_block->state = READY;
  }

  current_block = next_block;

}

uthread_t uthread_self(void) { return current_block->TID; }

uthread_TCB allocate(thread_state state, uthread_t TID) {
  uthread_TCB *new_block = malloc(sizeof(uthread_TCB));

  if(new_block == NULL)
  {
    return 0;
  }

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

	if(current_block == 0)
	{
	  if(uthread_init() != 0)
      {
	    return -1;
      }
	}

	*new_block = allocate(RUNNING,new_block->TID);
	if(*queue == 0)
    {
	  queue_create();
    }



}

void uthread_exit(int retval)
{
	if(current_block->state != RUNNING)
    {

    }

    current_block->retval = retval;
	current_block->state = FINISHED;

	if(current_block->collected == -1) {

	  uthread_TCB *collecting_block;
	  collecting_block->state = READY;

	  queue_func_t finding;

	  queue_iterate();
	}
	uthread_yield();
}

int uthread_join(uthread_t tid, int *retval)
{
	/* TODO Phase 2 */
	/* TODO Phase 3 */
}

