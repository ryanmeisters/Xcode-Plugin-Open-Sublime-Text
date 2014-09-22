#!/bin/sh

#  BumpBuild.sh
#  Light
#
#  Created by Ryan Meisters on 6/18/14.
#  Copyright (c) 2014 COD. All rights reserved.

bN=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "$INFOPLIST_FILE")
bN=$((bN += 1))
bN=$(printf "%d" $bN)
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $bN" "$INFOPLIST_FILE"