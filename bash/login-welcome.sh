#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
myname="$USER"
myhostname=$(hostname)
weekday=$(date +%A)
time=$(date +%I:%M\ %p)

###############
# Main        #
###############

#Task 4 : Setting title using the days of the week
if [ "$weekday" = Monday ]
then
statement="Welcome to planet $myhostname, monday fever $myname"
elif [ "$weekday" = Tueday ]
then
statement="Welcome to planet $myhostname, tuesday fever $myname"
elif [ "$weekday" = Wednesday ]
then
statement="Welcome to planet $myhostname, wednesday fever $myname"
elif [ "$weekday" = Thursday ]
then
statement="Welcome to planet $myhostname, thursday fever $myname"
elif [ "$weekday" = Friday ]
then
statement="Welcome to planet $myhostname, friday fever $myname"
elif [ "$weekday" = Saturday ]
then
statement="Welcome to planet $myhostname, saturday fever $myname"
else
statement="Welcome to planet $myhostname, sunday fever $myname"
fi
export="$statement It is $time on $weekday".
cowsay $export
