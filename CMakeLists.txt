cmake_minimum_required(VERSION 3.12)
project(project_2)

set(CMAKE_CXX_STANDARD 14)

add_executable(project_2 tests/queue_tester.c libuthread/queue.c libuthread/queue.h
        libuthread/uthread.c libuthread/uthread.h libuthread/context.c libuthread/context.h tests/uthread_hello.c
        libuthread/preempt.c libuthread/preempt.h tests/uthread_yield.c)