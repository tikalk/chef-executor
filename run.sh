#!/bin/bash

set -e
PATH=${PATH}:/opt/chef/embedded/bin/:/opt/chef/bin
export PATH

[[ "$1" == lvm ]] && json=lvm.json || json=node.json
librarian-chef install
chef-solo -c solo.rb -j $json -l debug
