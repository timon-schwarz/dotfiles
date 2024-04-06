#!/bin/bash
for (( i=1; i != 11; i++ ))
do
    hyprctl dispatch workspace $i
done
hyprctl dispatch workspace 1

