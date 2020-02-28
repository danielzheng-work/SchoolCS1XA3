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
## Feture 4
Description: this feature will change permission of the files ending in .sh to exceutable, or restore back to orginal permission 
Execution: First ask user to enter integer 1 for change or 2 for restore permission, then for Change option: getting the file orginal 
	permission and store it in permission log file, then change file that can has write permission, but not exceute permission to become 
	exceutable. For restore option: getting the each line from permission log, then for file has not exceutable permission, use chmod to remove its exceutable.
## Feture 5
Description: this feature will backup or restore files ending in .tmp in backup directory
Execution: First ask user to enter 1 for backup , 2 for restore, then for backup: check if backup directory exits.
	empty if exit, create if not. then add files orginal location to restore log, then mv file to backup directory. for restore option:
	access restore log, check if file exits in backup directory, then mv it back to its orginal location.
## Feture 6                                                                                                            
Description: this feature will reverse a line of string that user provided
Execution: exceute this feature by getting the string from user using read, and use grep to break the string,
	then using tac command to reverse the order. In the end, put these segment of string together using loop.
## Feature 7
Description: this feature will replace specific word provided by user with another word that also provided by user for all text type file.
Execution: exceute this feature by using read command to get the two word from user separatly, then find all text files in repo
	and use sed command to replace words.
