#!/bin/bash

set -euo pipefail
cd /home/vagrant

if [[ ! -d unep-gpml ]] ; then
    git clone https://github.com/akvo/unep-gpml.git
fi

mkdir -p ~/.m2/repository ~/.lein 
