#include <signal.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

#include "preempt.h"
#include "uthread.h"

/*
 * Frequency of preemption
 * 100Hz is 100 times per second
 */
#define HZ 100

sigset_t sigset;

void handler(int signum)
{

}
void preempt_disable(void)
{
	sigprocmask(SIG_BLOCK, &sigset, 0);
}

void preempt_enable(void)
{
	sigprocmask(SIG_UNBLOCK, &sigset, 0);
}

void preempt_start(void)
{
	/* TODO Phase 4 */
}

