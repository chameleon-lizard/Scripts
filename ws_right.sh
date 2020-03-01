#!/bin/bash

i3-msg workspace $(($(i3-msg -t get_workspaces | jq '.[] | select(.focused==true)' | jq '.num') + 1))
