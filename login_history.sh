#!/bin/bash
# Script Name:                  Variables 101
# Author:                       Edwin Pretel
# Date of latest revision:      10/25/2023
# Purpose:                      functions




print_login_history() {
    echo "This is the login history:"
    grep "Accepted password" /var/log/auth.log
}

# Call the function
print_login_history