#!/bin/bash
# Copyright (c) 2012 The Native Client Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#

# nacl-install-windows-ports-6.sh
#
# usage:  nacl-install-windows-ports-6.sh
#
# This script builds the packages for Native Client that are designated to
# the bot named windows-ports-6.
#

source ../bot_common.sh

SCRIPT_DIR="$(cd $(dirname $0) && pwd)"
cd ${SCRIPT_DIR}/../../..
make clean

BuildPackage openscenegraph
BuildPackage x264
BuildPackage boost
BuildPackage protobuf
BuildPackage openal

echo "@@@BUILD_STEP ${NACL_ARCH} Summary@@@"
if [[ $RESULT != 0 ]] ; then
  echo "@@@STEP_FAILURE@@@"
fi

echo -e "$MESSAGES"

exit $RESULT