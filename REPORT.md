Phase 1

We started implementing a traditional FIFO queue provided that there were

Phase 4

For the preempt disable() and enable() function, we simply need to call sigprocmask() which blocks the signal and change variables and hold it for later. For preempt_start(), this   