cmake_minimum_required(VERSION 3.12)
project(project_2)

set(CMAKE_CXX_STANDARD 14)

add_executable(project_2 queue_tester.c queue.c queue.h uthread.c uthread.h context.c context.h)