#!/bin/bash

display_help() {
    echo "Usage: breathing_exercise [--iterations <number>] [--pattern <pattern>] [--help]"
    echo
    echo "Guide you through a breathing exercise with customizable iterations and patterns."
    echo
    echo "Options:"
    echo "  --iterations <number>   Specify the number of iterations (default: unlimited)"
    echo "  --pattern <pattern>     Choose the breathing pattern: 4-7-8 or 4-2-4 (default: 4-7-8)"
    echo "  --help                  Display this help message"
    echo
    echo "Examples:"
    echo "  breathing_exercise"
    echo "  breathing_exercise --iterations 5"
    echo "  breathing_exercise --pattern 4-2-4"
    echo "  breathing_exercise --iterations 3 --pattern 4-2-4"
}

iterations=-1
inhale_time=4
hold_time=7
exhale_time=8

while [[ $# -gt 0 ]]; do
    case "$1" in
        --iterations)
            if [[ "$2" =~ ^[0-9]+$ ]]; then
                iterations=$2
                shift 2
            else
                echo "Invalid value for --iterations. Using default (unlimited)."
                shift
            fi
            ;;
        --pattern)
            if [ "$2" == "4-7-8" ] || [ "$2" == "4-2-4" ]; then
                if [ "$2" == "4-2-4" ]; then
                    inhale_time=4
                    hold_time=2
                    exhale_time=4
                fi
                shift 2
            else
                echo "Invalid value for --pattern. Using default (4-7-8)."
                shift
            fi
            ;;
        --help)
            display_help
            exit 0
            ;;
        *)
            echo "Unknown parameter: $1. Ignoring."
            shift
            ;;
    esac
done

i=1
while [ $iterations -eq -1 ] || [ $i -le $iterations ]; do
    clear
    echo "Inhale..."
    for ((j=inhale_time; j>0; j--)); do
        echo -ne "\rSeconds left: $j "
        sleep 1
    done
    echo -ne "\r                \r"

    clear
    echo "Hold..."
    for ((j=hold_time; j>0; j--)); do
        echo -ne "\rSeconds left: $j "
        sleep 1
    done
    echo -ne "\r                \r"

    clear
    echo "Exhale..."
    for ((j=exhale_time; j>0; j--)); do
        echo -ne "\rSeconds left: $j "
        sleep 1
    done
    echo -ne "\r                \r"

    ((i++))
done

echo "Breathing exercise completed."