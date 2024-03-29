/*
 * Copyright (c) 2014 The Native Client Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */
#ifndef GLIBCEMU_SYS_UNISTD_H
#define GLIBCEMU_SYS_UNISTD_H

#include_next <sys/unistd.h>

#include <sys/stat.h>
#include <sys/types.h>

/*
 * TODO(bradnelson): Consider adding sysconf (and this define) to nacl_io.
 * This would allow us to return more useful values.
 * For example nacl_io knows what this one should be.
 *
 * This sysconf parameter is unsupported by newlib, pick a bad value so that
 * we can still build when this is used, and instead hit a runtime error.
 * One port (tcl) has a fallback in this case to guess a reasonable value.
 */
#define _SC_GETPW_R_SIZE_MAX (-1)

/* TODO(bradnelson): Drop this once we've landed nacl_io pipe support. */
extern int mknod(const char *pathname, mode_t mode, dev_t dev);
extern int mkfifo(const char *pathname, mode_t mode);


#endif
