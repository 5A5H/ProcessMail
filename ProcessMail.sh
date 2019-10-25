#!/bin/sh
MAILTO=""
SUBJECT=""


# Screen variables (are just empty if no screen)
CONTENT="Process finished on\t: ${HOSTNAME} \n"\
"Working directory\t: ${PWD}\n"\
"Screen session\t\t: ${STY}\n"\
"Screen Window\t\t: ${WINDOW}"

#echo -e $CONTENT

# The next line just executes all arguments of this script (wrapper functionality)
time $@

echo "sending mail"
echo -e ${CONTENT} | mail -s ${SUBJECT} ${MAILTO}
