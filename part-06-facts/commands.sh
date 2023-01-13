#!/bin/bash

ansible -i hosts.ini node001 -m setup -a 'filter=ansible_mem*'

ansible -i hosts.ini node001 -m setup -a 'gather_subset=!all,!min,network' | more