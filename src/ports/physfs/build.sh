# Copyright (c) 2013 The Native Client Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

# TODO(binji): turn on shared building for glibc (need -fPIC)
BUILD_SHARED=FALSE
# TODO(binji): The tests don't currently build without zlib as a shared
# library.
BUILD_TEST=FALSE

EXTRA_CMAKE_ARGS=" \
  -DPHYSFS_BUILD_SHARED=${BUILD_SHARED} \
  -DPHYSFS_BUILD_TEST=${BUILD_TEST} \
  -DPHYSFS_HAVE_MNTENT_H=FALSE"
