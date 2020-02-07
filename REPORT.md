Phase 1

We started implementing a traditional FIFO queue, utilizing a standard linked list with node elements. 


Phase 2

Phase 3

Phase 4

For the preempt disable() and enable() function, we simply need to call sigprocmask() which blocks the signal and change variables and hold it for later. For preempt_start(), this   

References

For looking at linked list implementation: https://codereview.stackexchange.com/questions/141238/implementing-a-generic-queue-in-c

All the documentation that was provided in the .html