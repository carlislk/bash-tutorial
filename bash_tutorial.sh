#!/bin/bash


# Kevin Carlisle
# ICS 193
# Winter 2016


# Clear Terminal
clear

# Set Colors
red="\e[1;31m%s\e[0m\n"
green="\e[1;32m%s\e[0m\n"
yellow="\e[1;33m%s\e[0m\n"
blue="\e[1;34m%s\e[0m\n"
magenta="\e[1;35m%s\e[0m\n"
cyan="\e[1;36m%s\e[0m\n"

# Colors
ESC_SEQ="\x1b["
C_RESET=$ESC_SEQ"39;49;00m"
C_RED=$ESC_SEQ"31;01m"
C_GREEN=$ESC_SEQ"32;01m"
C_YELLOW=$ESC_SEQ"33;01m"
C_BLUE=$ESC_SEQ"34;01m"
C_MAGENTA=$ESC_SEQ"35;01m"
C_CYAN=$ESC_SEQ"36;01m"


# Set Full Line Character Break
fullLineChar=$(eval printf %.0s# '{1..'"${COLUMNS:-$(tput cols)}"\}; echo)
nl=$(echo -e "${C_BLUE}${fullLineChar}${C_RESET}")


# Start Script

echo $nl
echo -e "   Simple Bash Example"
echo $nl

echo
echo -e " This script will attempt to show the usefullness of
  bash scripting by going through a few simple examples. 
  There are a number of good resources to learn
  Bash/Unix commands, this example will not attempt
  to teach commands in depth but rather focus on linking
  them together to produce meaningful results."
echo

echo -e " ..."

echo
echo -e " This script requires a number of files to run. If you
  downloaded the zip for this example they should already
  be located in the same folder as this script: "
echo
echo -e " This script will show a few useful Bash/Unix commands. 
	The files that we will work on are a simple example of vehicle information.
	Lets learn a few commands to explore the files.  "
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear


# ls . 
echo $nl
echo -e "   Unix Command - ls - "
echo $nl
echo
echo -e " Using the ls command we can check what files and directories are in
	the current working directory. 'ie. Where our script is running'"
echo
echo -e " ${C_RED}>>${C_RESET} ls ."
echo -e "${C_RED}    $(ls --color . | xargs echo)${C_RESET}"
echo
echo -e " We can see that there is a directory called data, "
echo -e " and the shell script we are currently running."
echo

echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# ls ./data
echo $nl
echo -e "   Unix Command - ls - "
echo $nl
echo
echo -e " By using the same command ( ls ) we can pass in the directory
	called data to see what it contains."
echo
echo -e " ${C_RED}>>${C_RESET} ls ./data"
echo -e "${C_RED}    $(ls --color ./data | xargs echo)${C_RESET}"
echo
echo -e " There are three directories: config, specfications, & tests. And there 
	are three text files: text1.txt, text2.txt, & text3.txt"
echo

echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# ls ./data/config ./data/specs ./data/tests
echo $nl
echo -e "   Unix Command - ls - "
echo $nl
echo
echo -e " Additionally we can check to see what config, specs, & tests
	directories contain. "
echo
echo -e " ${C_RED}>>${C_RESET} ls ./data/config"
echo -e "${C_RED} ${C_RESET}   $(ls --color ./data/config | xargs echo)"
echo
echo
echo -e " ${C_RED}>>${C_RESET} ls ./data/specfications"
echo -e "${C_RED} ${C_RESET}   $(ls --color ./data/specfications | xargs echo)"
echo
echo
echo -e " ${C_RED}>>${C_RESET} ls ./data/tests"
echo -e "${C_RED}  ${C_RESET}  $(ls --color ./data/tests | xargs echo)"
echo

echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# tree
echo $nl
echo -e "   Unix Command - tree - "
echo $nl
echo
echo -e " We have now seen what each subdirectory in data contains. However
	it took us several commands and in the case of ./data/config there are
	still more subdirectories to explore. A useful command to check the structure
	of directories is tree. "
echo
echo -e " ${C_RED}>>${C_RESET} tree"
#echo -e "${C_RED} ${C_RESET}   $(tree  | xargs echo)"
tree 
echo
echo -e " Now we can clearly see the structure of the data directory."
echo

echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# tree -C
echo $nl
echo -e "   Unix Command - tree - "
echo $nl
echo
echo -e " By passing an argument or specifying an option we can make the
	tree easier to look at. '-C' option will color directories and files."
echo
echo -e " ${C_RED}>>${C_RESET} tree -C"
#echo -e "${C_RED} ${C_RESET}   $(tree  | xargs echo)"
tree -C
echo
echo -e " Should be more readable."
echo

echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# Cat Text File
echo $nl
echo -e "   Unix Command - cat - "
echo $nl
echo
echo -e " Now that we have explored the directories in the data directory, lets
	take a look at the files. From our 'ls' & 'tree' commands we know that there
	are several different types of files. Likely the first we notice are text files.
	In /data there are three text files: text1.txt, text2.txt, & text3.txt. Lets 
	see what they contain. "

echo 
echo -e " By using the 'cat' command we can display on the terminal what a file 
	contains. "
echo
echo -e " ${C_RED}>>${C_RESET} cat ./data/text1.txt"
echo -e "$(cat ./data/text1.txt | xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# Cat .Spec File
echo $nl
echo -e "   Unix Command - cat - "
echo $nl
echo
echo -e " Lets now take a look at what a '.spec' file contains. Inside
	./data/specs directory there are several '.spec' files. Lets see what
	model-a.spec contains."

echo 
echo -e " ${C_RED}>>${C_RESET} cat ./data/specfications/model-a.spec"
echo
# echo -e "$(cat ./data/specfications/model-a.spec | 
# 	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
# echo
echo -e "$(cat ./data/specfications/model-a.spec | head -25 |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " Inside the .spec file are a number of parameters for a vehicle. 
	Each parameter name is followed by a ':' and a single argument 
	ex. Wheelbase: 106.3 in
	Where Wheelbase is the parameter name & 106.3 in is its argument. "
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# Find .
echo $nl
echo -e "   Unix Command - find - "
echo $nl
echo
echo -e " Now that we have seen a few useful commands to explore the data directory
	lets move on to a few specific examples."
echo 
echo -e " To list all files or directories we can use the 'find' command."
echo
echo -e " ${C_RED}>>${C_RESET} find ."
echo -e "${C_RED}${C_RESET}$(find .  | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo

echo -e " To list all directories we can specify the type in the find command."
echo -e " ${C_RED}>>${C_RESET} find . -type d"
echo -e "${C_RED}${C_RESET}$(find . -type d  | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " To list all files."
echo -e " ${C_RED}>>${C_RESET} find . -type f"
echo -e "${C_RED}${C_RESET}$(find . -type f  | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " Using the find command we now have a list of all the files in our directory.
	Lets look further into how we can use the find command."
echo
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# Find All Files of One Type
echo $nl
echo -e "   Unix Command - find - "
echo $nl
echo
echo -e " To find all files that are of the same type we can specify a name
	parameter in find. Where find only returns files that match whatever name you
	pass in."

echo
echo -e " To list all files that are a text file."
echo
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*.txt'"
echo -e "${C_RED}${C_RESET}$(find . -type f -name '*.txt' | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " The find command only returns filenames that match the string passed in.
	In this case we passed in '*.txt' where * matches any characters followed by
	'.txt'."
echo -e " So in the case of 'text1.txt' * matches 'text1' & '.txt' matches '.txt'."
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# Find Files with filenames matching specified String
echo $nl
echo -e "   Unix Command - find - "
echo $nl
echo

echo -e " To list all files that contain the string 'model' ."
echo
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*model*'"
echo -e "${C_RED}${C_RESET}$(find . -type f -name '*model*' | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " To list all files that contain the string 'model' and are of type txt."
echo
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*model*.txt'"
echo -e "${C_RED}${C_RESET}$(find . -type f -name '*model*.txt' | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# Grep 
echo $nl
echo -e "   Unix Command - grep - "
echo $nl
echo
echo -e " Another very useful command is 'grep'. 
	Grep searches the named input FILEs (or standard input if no files are named, 
	or the file name - is given) for lines containing a match to the given PATTERN. 
	By default, grep prints the matching lines."
echo 
echo -e " Lets see a few examples of grep."
echo
echo -e " First lets see what ./data/text1.txt contains using cat."
echo
echo -e " ${C_RED}>>${C_RESET} cat ./data/text1.txt"
echo
echo -e "$(cat ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " Lets use the grep command to attempt to match lines.
	that match the string 'line'."
echo

echo -e " ${C_RED}>>${C_RESET} grep 'line' ./data/text1.txt"
echo
echo -e "$(grep --color=always 'line' ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " We can see the the string 'line' matched in three places."

echo
echo -e " Matching the string 'is'."
echo
echo -e " ${C_RED}>>${C_RESET} grep 'is' ./data/text1.txt"
echo
echo -e "$(grep --color=always 'is' ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo


read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo -e " Matching the string ' is ' with spaces around 'is'."
echo
echo -e " ${C_RED}>>${C_RESET} grep ' is ' ./data/text1.txt"
echo
echo -e "$(grep --color=always ' is ' ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# WC
echo $nl
echo -e "   Unix Command - wc - "
echo $nl
echo
echo -e " Another very useful command is 'wc'. 
	wc prints newline, word, and byte counts for each FILE"
echo 
echo -e " Lets see a few examples of wc."
echo
echo -e " ${C_RED}>>${C_RESET} wc ./data/text1.txt"
echo
echo -e "$(wc ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo
echo -e "The format of wc is as follows:
	newline_count  word_count  char_count file_name
	4              24          119        ./data/text1.txt"
echo
echo -e " By specifing options we can limit the results."
echo
echo -e " ${C_RED}>>${C_RESET} wc -l ./data/text1.txt"
echo
echo -e "$(wc -l ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo
echo -e " ${C_RED}>>${C_RESET} wc -w ./data/text1.txt"
echo
echo -e "$(wc -w ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo
echo -e " ${C_RED}>>${C_RESET} wc -c ./data/text1.txt"
echo
echo -e "$(wc -c ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# Introduce Piping
echo $nl
echo -e "   Unix Command - Piping - "
echo $nl
echo
echo -e " Now that we know a few useful commands lets see how we can link them together 
	using piping."
echo 
echo -e " Piping allows you to connect two commands together so that the output from 
	one program becomes the input of the next program. Two or more commands connected 
	in this way form a pipe."
echo


echo -e " Example: 
	command1 | command 2"
echo

echo -e " Lets use find to get a list of all files."
echo
echo -e " ${C_RED}>>${C_RESET} find . -type f"
echo -e "${C_RED}${C_RESET}$(find . -type f  | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo

read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo

echo -e " Using piping we can pipe the results of find to the grep command."
echo
echo -e " ${C_RED}>>${C_RESET} find . -type f | grep model"
echo -e "${C_RED}${C_RESET}$(find . -type f  | grep --color=always model |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " The text highlighted specifies matching text and each line that contains
	matching text is printed to the console."

echo
echo -e " The grep command was applied to the resulting strings from the find command. 
	In some cases this is useful but what if we want to apply a command to all the
	files that we matched using the find command? "
echo 
echo -e " XARGS is useful command that can help us. "
echo
echo -e " XARGS reads items from the standard input, delimited by blanks (which can be
       protected with double or single quotes or a backslash) or newlines, and executes 
       the command (default is /bin/echo) one or more times with any initial-arguments 
       followed by items read from standard input."
echo 
echo -e " Simply put xargs will seperate our filenames by spaces instead of newlines
	so we can easily pass our results from find into another command."
echo 

read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec'| xargs"
echo -e "${C_RED}${C_RESET}$(find . -type f  -name "*spec" | xargs |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " This is useful because Bash/Unix commands generally can accept more than one 
	argument as long as they are seperate by spaces."
echo 
echo -e " ${C_RED}>>${C_RESET} wc ./data/text1.txt ./data/text2.txt"
echo -e "${C_RED}${C_RESET}$(wc ./data/text1.txt ./data/text2.txt |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " Going back to our example with find we can now apply a command to each 
	file that we matched using find."
echo

echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | xargs grep Body"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Body |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " Our results are formatted as follows:
	'file_name':'matching_line' "
echo
echo -e " We can see that all three '.spec' files contained the string 'Body'"
echo 
echo -e " Here is another example seaching the same files for 'Type'."
echo 
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | xargs grep Type"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Type |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " We can see that each '.spec' file matches multiple lines: Body_Type, Engine_Type,
	& Transmission_Type. "
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# Adding Cut & Uniq
echo $nl
echo -e "   Unix Command - Piping - "
echo $nl
echo
echo -e " Lets expand further of the example that we saw above."
echo
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | xargs grep Type"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Type |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " What if for example we wanted to determine the types of engines or types of transmissions
	used in the cars?"

echo 
echo -e " By using the 'cut' command we can seperate out the results printed to the console."

echo 
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | xargs grep Type | cut -f 2,3 -d ':'"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Type |
	 cut -f 2,3 -d ":" | xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " By specifing -d we can set the delimiter or how to break up the string. In our case
	we used ':'. So our resulting string is seperated into 3 fields, because 
	there are two ':' present in the string. Also by specifing -f 2,3 we 
	select the second and third of the three strings after the split. "

echo 

read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo -e " Lets use the cut command to specfically select all the Transmission types in the 
	car models. "
echo 
echo -e " By changing the grep search pattern to 'Transmission_Type' we will now only be 
	selecting lines that contain information about the vehicles transmisison."

echo 
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | xargs grep Transmission_Type | cut -f 2,3 -d ':'"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Transmission_Type |
	 cut -f 2,3 -d ":" | xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " Now we can see that we have selected all lines that are relevent. Lets further cut this 
	information to determine the unique types of transmission present in our models."

echo 
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | xargs grep Transmission_Type | cut -f 3 -d ':'"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Transmission_Type |
	 cut -f 3 -d ":" | xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " Using another Unix command 'uniq' we can determine all the unique types of transmissions
	present in our car models. "

echo 
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | 
	xargs grep Transmission_Type | cut -f 3 -d ':' | uniq "
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Transmission_Type |
	 cut -f 3 -d ":" | uniq | xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " Strangely our command 'uniq' did not work as we expected. Uniq only removes repeated lines 
	if they are adjacent. If we use another unix command 'sort' to first sort our output
	we should be able to determine all unique transmission types present in our
	car models."

echo 
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | 
	xargs grep Transmission_Type | cut -f 3 -d ':' | sort"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Transmission_Type |
	 cut -f 3 -d ":" | sort | xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " Now we can see that our output is sorted. Lets try the 'uniq' command."

echo 
echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | 
	xargs grep Transmission_Type | cut -f 3 -d ':' | sort | uniq"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Transmission_Type |
	 cut -f 3 -d ":" | sort | uniq | xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " Sure enough now we have all the unique types of tranmissions used in our models. Lets add 
	on another command to our pipe to determine the count of unique transmission types. "
echo 

echo -e " ${C_RED}>>${C_RESET} find . -type f -name '*spec' | 
	xargs grep Transmission_Type | cut -f 3 -d ':' | sort | uniq | wc -l"
echo -e "${C_RED}${C_RESET}$(find . -type f -name "*spec" | xargs grep --color=always Transmission_Type |
	 cut -f 3 -d ":" | sort | uniq | wc -l | xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"

echo
echo -e " Our result is 2. In this example it would have been easy to simple count the unique amount
	of transmissions used in our vehicles but if we had hundreds of models it would 
	be much more useful."
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear

# sed # 1
echo $nl
echo -e "   Unix Command - Search & Replace using SED - "
echo $nl
echo
echo " 'sed' is a stream editor. A 
	stream editor is used to perform basic text transformations 
	on an input stream (a file or input from a pipeline). "
echo 
echo -e " We are going to look at a very basic function using sed. 
	Search and Replace. "
echo 

echo -e " First lets echo a string to the terminal."
echo
echo -e " ${C_RED}>>${C_RESET} echo 'The weather today is sunny'"
echo
echo -e "$(echo 'The weather today is sunny' | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " Using Sed we can search and replace text in our string."
echo
echo -e " ${C_RED}>>${C_RESET} echo 'The weather today is sunny' | sed s/sunny/overcast/"
echo
echo -e "$(echo The weather today is sunny | sed s/sunny/overcast/ |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " Sed is case sensitive by default so searching for 'Sunny' will not match"
echo
echo -e " ${C_RED}>>${C_RESET} echo 'The weather today is sunny' | sed s/Sunny/overcast/"
echo
echo -e "$(echo The weather today is sunny | sed s/Sunny/overcast/ |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear


# sed # 2
echo $nl
echo -e "   Unix Command - Search & Replace using SED - "
echo $nl
echo
echo -e " Sed can search and replace multiple strings. "
echo 

echo -e " Lets echo a longer string to the terminal."
echo
echo -e " ${C_RED}>>${C_RESET} echo 'Her cup is red and my cup is red. They are the same color.'"
echo
echo -e "$(echo 'Her cup is red and my cup is red. They are the same color.' | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " Using sed we can replace both instances of the word 'red'. "
echo
echo -e " ${C_RED}>>${C_RESET} echo 'Her cup is red and my cup is red. They are the same color.' 
	| sed s/red/blue/"
echo
echo -e "$(echo Her cup is red and my cup is red. They are the same color.  | sed s/red/blue/ |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " Using the same syntax as before 's/red/blue/' we can see that sed only replaced
	the first instance of the word 'red'. If we alter our command we can change both words."
echo
echo -e " ${C_RED}>>${C_RESET} echo 'Her cup is red and my cup is red. They are the same color. ' 
	| sed s/red/blue/g"
echo
echo -e "$(echo Her cup is red and my cup is red. They are the same color.  | sed s/red/blue/g |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo
echo
echo -e " By adding a 'g' after the search and replace command we are able to replace all instances
	of the string. We could also specify to only match specific instances
	of the word. 
	For example 's/red/blue/1' would replace only the first occurence.
	's/red/blue/2' would replace only the second ocurence of the word 'red' "
echo

echo -e " ${C_RED}>>${C_RESET} echo 'Her cup is red and my cup is red. They are the same color. ' 
	| sed s/red/blue/2"
echo
echo -e "$(echo Her cup is red and my cup is red. They are the same color.  | sed s/red/blue/2 |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear


# sed edit file
echo $nl
echo -e "   Unix Command - Search & Replace File using SED - "
echo $nl
echo
echo -e " Lets see how we can use sed to edit a file.
	Using '-i' option in sed will allow us to edit in place"
echo 

echo -e " First lets cat a file to the terminal."
echo
echo -e " ${C_RED}>>${C_RESET} cat ./data/text1.txt"
echo
echo -e "$(cat ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo

echo -e " Now lets edit the file using sed."
echo
echo -e " ${C_RED}>>${C_RESET} sed -i s/'different colors'/'the same color'/g ./data/text1.txt"
echo
echo -e "$(sed -i s/'different colors'/'the same color'/g ./data/text1.txt |
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo
echo -e " Nothing was returned from our command. Lets cat the file again and 
	see if it was edited."
echo
echo -e " ${C_RED}>>${C_RESET} cat ./data/text1.txt"
echo
echo -e "$(cat ./data/text1.txt | 
	xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
echo
echo 
echo -e " Now we can see that our file was indeed edited."
echo
echo
echo -e " Note: The file will now be edited back to its original content.."
echo
sed -i s/'the same color'/'different colors'/g ./data/text1.txt


echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear



# Interactive Match Files
echo $nl
echo -e "   Interactive Example"
echo $nl

echo 
echo
echo -e " Lets see if you can remember some commands. "
echo
echo -e " Enter a command to get the file names of all '.config' files. "
echo

CMD_LOOP=true

# While
while  $CMD_LOOP; do

	# Get User Input While Empty
	while [[ -z "$USR_CMD" ]]
	do
	  read -p " Enter command: " USR_CMD
	done

	# Echo User Command
	echo
	echo -e " ${C_RED}>>${C_RESET} $USR_CMD"
	echo 

	# Execute User Command
	echo -e "$( eval ${USR_CMD} | 
		xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
	echo

	# Execute User Command 2nd Time
	CMD_RESULT=$(eval ${USR_CMD})
	# Execute Desired Command
	EXP_RESULT=$(find . -type f -name '*.config')

	# Check if results match
	if [[ ${CMD_RESULT} == ${EXP_RESULT} ]];then
		echo " Correct Output Matched"
		CMD_LOOP=false

	else
		echo " Incorrect Output Matched"
		echo " Output should match: "
		echo
		echo -e "$( find . -type f -name '*.config' | 
			xargs -L1 -d "\n" echo -e "${C_RED} >${C_RESET} ")"
		echo
    echo " Please try again ( use ^c to exit )"
		echo
		unset USR_CMD
		unset CMD_RESULT
		unset EXP_RESULT
	fi
	echo
done

# Sucessfully Matched the Command
# find . -type f -name "*.config"

echo 
echo -e " Good work. Lets move on to another example."
echo 
echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear




echo $nl
echo -e "   Interactive Example Introduction"
echo $nl

echo 
echo -e " Now that we have seen a few Unix commands lets see if we can put them to use."
echo
echo -e " What if we were tasked with editing some of the files in our 'data' directory."
echo 
echo -e " In each of the '.config' files there are setting for car options."
echo 
echo -e " One option is 'Seatbelt_Warning' for all car models it is set to true.
	If we wanted to change this option in all of our '.config' files it would be
	relatively each. We would just open each file using a text editor and replace
	true with false. "
echo 
echo -e " In our 'data' directory it would be pretty easy because there are only
	three '.config' files. But what if there were thirty or fourty models. 
	This might take some time. "
echo 
echo -e " Using the Unix commands we have learned we can easily change this option
	in multiple files using a single command."
echo 
echo 
echo -e " In this section of the tutioral you are tasked with entering in a command
	to change the 'Seatbelt_Warning' option from true to false."

echo 
echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear


unset USR_CMD
unset USR_RESULT
unset EXP_RESULT

# Interactive Change file To False
echo $nl
echo -e "   Interactive Example"
echo $nl

echo 
echo
echo -e " Enter a command to change the 'Seatbelt_Warning' option from true to false."
echo
echo -e " Remember that you will be editing files if you use sed with '-i'."
echo 

CMD_LOOP=true

# While
while  $CMD_LOOP; do

	# Get User Input While Empty
	while [[ -z "$USR_CMD" ]]
	do
    read -p " Enter command: " USR_CMD
	done

	# Echo User Command
	echo
	echo -e " ${C_RED}>>${C_RESET} $USR_CMD"
	echo 


	# Execute Desired Command
	EXP_RESULT=$(find . -type f -name "*config" | xargs grep belt | sed s/true/false/g)

	# Execute User Command
	echo -e "$( eval ${USR_CMD} | 
		xargs -L1 -d "\n" echo -e "${C_GREEN} >${C_RESET} ")"
	echo

	# Check if file changed
	USR_RESULT=$(find . -type f -name "*config" | xargs grep belt )

	# Check if results match
	if [[ ${USR_RESULT} == ${EXP_RESULT} ]];then
		echo " Correct Output Matched"
		CMD_LOOP=false

	else
		echo " Incorrect Output Matched"
		echo " Output should match: "
		echo
		echo -e "$( find . -type f -name "*config" | xargs grep belt | sed s/true/false/g | 
			xargs -L1 -d "\n" echo -e "${C_RED} >${C_RESET} ")"
		echo
    echo " Please try again (use ^c to exit)"
		echo
		unset USR_CMD
		unset USR_RESULT
		unset EXP_RESULT
	fi
	echo
done

# Sucessfully Matched the Command
# find . -type f -name "*.config"
# find . -type f -name "*config" | xargs grep belt | cut -f 1 -d ':' | xargs sed -i s/true/false/g

# Reset File
find . -type f -name "*config" | xargs grep belt | cut -f 1 -d ':' | xargs sed -i s/false/true/g

echo 
echo -e " Good work."
echo 
echo $nl
echo
read -rsp $"Press any key to continue (^c to exit)..." -n1 key
echo
echo
clear




echo $nl
echo -e "   The End"
echo $nl
echo
echo 
echo
echo -e " Thank you for completing this tutorial."
echo
echo
echo


echo $nl
echo
read -rsp $"Press any key to continue..." -n1 key
echo
echo
clear
