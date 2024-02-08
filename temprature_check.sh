#!/bin/bash

# Function to greet and introduce the user
greet() {
    echo "Temperature Converter"
    echo "1. Fahrenheit to Celsius"
    echo "2. Celsius to Fahrenheit"
}

# Function to convert Fahrenheit to Celsius
fahrenheit_to_celsius() {
    local fahrenheit=$1
    local celsius=$(echo "scale=2; ($fahrenheit - 32) * 5 / 9" | bc)
    echo "$fahrenheit°F is $celsius°C"
}

# Function to convert Celsius to Fahrenheit
celsius_to_fahrenheit() {
    local celsius=$1
    local fahrenheit=$(echo "scale=2; ($celsius * 9 / 5) + 32" | bc)
    echo "$celsius°C is $fahrenheit°F"
}

# Main function
main() {
    greet

    # Ask for user choice
    echo "Enter your choice:"
    read choice

    case $choice in
        1)
            echo "Enter temperature in Fahrenheit:"
            read fahrenheit
            fahrenheit_to_celsius "$fahrenheit"
            ;;
        2)
            echo "Enter temperature in Celsius:"
            read celsius
            celsius_to_fahrenheit "$celsius"
            ;;
        *)
            echo "Please enter a valid choice (1 or 2)."
            ;;
    esac

    echo "Exiting the program. Goodbye!"
}

# Call the main function
main

