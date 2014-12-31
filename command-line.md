# The Programmer's Command Prompt

Most developers do the majority of their development work with their command prompt and editor. The command prompt allows access to all aspects of the operating system. It initially feels dated. But use of the command prompt is a key skill for efficient and rapid development.

This guide will provide a quick intro to the command line. It is also a reference for common commands you will need to execute. Come back to this reference frequently for help.

## Background

The command prompt allows the user to manage files and folders, perform queries and launch applications. In graphical operating systems, like Windows or Mac, you interact with the machine mainly with the mouse. With a command prompt, you type commands and hit return.

Most Unix-like operating systems (MacOS being one of them) provide that you can choose a command-line interpreter. In this reference guide, we are going to provide you with frequently used commands that we use in [ohmyzsh](http://ohmyz.sh/), which is the shell of choice at Launch Academy.

## Man

We will start this guide by providing you with a tool to help you learn your *own* way around the command prompt.

As in so many contexts, the documentation of a technology helps to answer most questions. The challenge is learning how to navigate those documents, when they have tough technical terms and symbols. The ```man``` (short for manual)  is a source of documentation for many of the commands we will define here. You can use ```man``` if it's faster for you. It will not always have the easiest information to understand, so work with it and see.

Run ```man``` on ```man``` itself. Enter the following in your command prompt.

```
man man
```
The result will be the following:

```
NAME  

man - format and display the on-line manual pages

SYNOPSIS  

man [-acdfFhkKtwW] [--path] [-m system] [-p string] [-C config_file] [-M pathlist] [-P pager] [-B browser] [-H htmlpager] [-S section_list] [section] name ...

DESCRIPTION  

man formats and displays the on-line manual pages.  If you specify section, man only looks in that section of the manual.  name is normally  the  name  of the  manual  page,  which  is  typically the name of a command, function, or file.

[Continued...]
```

As you can see, using the ```man``` command can provide you with instant access to valuable information. The most important information for our purposes can be found in ```SYNOPSIS``` and ```DESCRIPTION```, where we can find syntax and explanation, respectively.

## Commonly Used Commands

cat
|
ls
mv
cp
rm
diff
mkdir
cd
cd ..
cd ~/
pwd
telnet
curl
date
cal
cat
grep
echo
la | grep .txt
tar
head
tail
brew
nano
say 'Hello'
http://cli.learncodethehardway.org/book/

ctrl + a	Moves the cursor to the beginning of your command
ctrl + e	Moves the cursor to the end of your command
ctrl + u	Deletes the portion of your command before the current cursor position


## Advanced Topics for Continued Learning
