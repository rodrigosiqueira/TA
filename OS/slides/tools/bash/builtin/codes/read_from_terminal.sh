#!/bin/bash

echo "This is the basic behaviour [ENTER]: "
read year
echo "$year"

echo "This read without variable, we used REPLY to show [ENTER]: "
read
echo "$REPLY"
