Phase 1

We started implementing a traditional FIFO queue, utilizing a standard linked list with node elements. There consists a head and tail node to help keep track of the linked list elements. Also included is the size of the linked list. 

Phase 2

For Phase 2, we implemented a TCB struct to hold all the required information for the thread control block. We created a void pointer as the stack pointer as well as a uthread_ctx_t pointer which held data for context switches. For global variables, we have a current_queue and a current_block so that we can keep track of what thread is running and where it is stored. This also allows use to easily enqueue and dequeue any threads that we want. There is a state enum to keep track of the state of the thread. 

Phase 3


Phase 4

For the preempt disable() and enable() function, we simply need to call sigprocmask() which blocks the signal and change variables and hold it for later. For preempt_start(), theoretically there should be timers initialized when called.  

References

For looking at linked list implementation: https://codereview.stackexchange.com/questions/141238/implementing-a-generic-queue-in-c

All the documentation that was provided in the .html