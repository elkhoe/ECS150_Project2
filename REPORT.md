Phase 1

We started implementing a traditional FIFO queue, utilizing a standard linked list with node elements. There consists a head and tail node to help keep track of the linked list elements. Also included is the size of the linked list. 

Phase 2

For Phase 2, we implemented a TCB struct to hold all the required information for the thread control block. We created a void pointer as the stack pointer as well as a uthread_ctx_t pointer which held data for context switches. For global variables, we have a current_queue and a current_block so that we can keep track of what thread is running and where it is stored. This also allows use to easily enqueue and dequeue any threads that we want. There is a state enum to keep track of the state of the thread. There are also collected and collecting variables to keep track of those types of threads. There is also a separate function for the first initialization of a thread since it's different than initializing a thread with an existing thread. TID_find allows use to quickly find the TID thread in question. 

Phase 3

The join function will look for the exit thread's TID and match it with the joining thread. When the joined thread comes into play, it can either be blocked or collect the dead thread. Then the dead thread must be freed from all its resources. We were unable to complete this phase. 

Phase 4

For the preempt disable() and enable() function, we simply need to call sigprocmask() which blocks the signal and change variables and hold it for later. For preempt_start(), theoretically there should be timers initialized when called. We were unable to complete the implementation of the phase. 

References

For looking at linked list implementation: https://codereview.stackexchange.com/questions/141238/implementing-a-generic-queue-in-c

For threading implementation: https://www.cs.cmu.edu/afs/cs/academic/class/15492-f07/www/pthreads.html

All the documentation that was provided in the .html
