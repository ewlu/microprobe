#!/usr/bin/env bash
# Copyright 2018 IBM Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
set -e

if [ $# -ne 2 ]; then
  echo "Create Env skeleton utility. It generates the required files to start a new Env backend." 
  echo
  echo "Usage: $0 target_dir name"
  echo 
  exit 255
fi

if [ -e "$1/$2.py" ]; then
  echo "Target '$1/$2.py' already exists"
  exit 255
fi

DIR="$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P )"
TEMPLATE_DIR=$DIR/templates

cp "$TEMPLATE_DIR/header.python" "$1/$2.py"

