# CS 1XA3 Project01 - <zhengc15>

## Usage
	Execute this script from project root with:
		chmod +x CS1XA3/Project01/project_analyze.sh
		./CS1XA3/Project01/project_analyze.sh arg1
		With possible arguments
		arg1: 1, 2, 3...
## Mandatory Feature 
Description: this feature will take script argument to select which feature to execute 
Execution: exceute this feature by assign the first argument to variable called featureNum
## Feature 1
Description: this feature will find every file in the repo that has the word "FIXME" in
			 the last line. And put the filename in fixme.log.
Execution: exceute this feature by first getting last line of every file in repo, and 
		   then compare it to string "FIXME", if equals, then put the filename in fixme.log
## Feature 2
Description: this feature will output number of files in the repo with specific extension provided by user 
Execution: exceute this feature by getting the user input using read command, then using find command 
		   to find the file with this extension and output name to a temporary file. In the end, 
		   count the number of line in this temporary file, and rm this file.
## Feature 3
Description: this feature will list all files in repo and their size in human readable format from largest to smallest.
Execution: exceute this feature by using ls command with options of -l,-h,-R, -S, -P, to output each file and directory 
		   in repo including their sizes in human readable format, then piping the output with grep to remove all directory
		   and use awk to print only filename and size
## Custom Feature 4
Description: this feature will reverse an word that user provided 
Execution: exceute this feature by getting a word from user using read, and count number letter of the word. then using loop
		   to print each letter out without newline in the end.		 
## Custom Feature 5
Description: this feature will replace specific word provided by user with another work provided by user for all text file 
			 repo that contains the first word
Execution: exceute this feature by using for loop through each text file in repo, and use sed command to replace words.

