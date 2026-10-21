#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (% per year): " rate
read -p "Enter Time Period (in years): " time

# Calculate simple interest
interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "-------------------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $(awk -v p="$principal" -v i="$interest" 'BEGIN { printf "%.2f", p + i }')"
echo "-------------------------------------"
