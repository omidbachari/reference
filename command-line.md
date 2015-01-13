# The Programmer's Command Prompt

Most developers do the majority of their development work with their command prompt and editor. The command prompt allows access to all aspects of the operating system. It initially feels dated. But use of the command prompt is a key skill for efficient and rapid development.

This guide will provide a quick intro to the command line. It is also a reference for common commands you will need to execute. Come back to this reference frequently for help.

## Background

The command prompt allows the user to manage files and directories, perform queries and launch applications. In graphical operating systems, like Windows or Mac, you interact with the machine mainly with the mouse. With a command prompt, you type commands and hit return.

Most Unix-like operating systems (MacOS being one of them) provide that you can choose a command-line interpreter.

## Quick Note: Users and Paths

In this guide, we talk about users and paths. A user is you. To the command prompt, a user is an entity that logs in, is using the command prompt and is permitted to perform certain actions.

A path is an address within a filesystem. **Absolute** paths point to a definite place in a filesystem, regardless of the present working directory. **Relative** paths are shorter, based on the present working directory.

## Man

We will start this guide by providing you with a tool to help you learn your *own* way around the command prompt. At Launch Academy, we frown (constructively) upon questions asked of an instructor before resources are consulted.

As in so many contexts, the documentation of a technology helps to answer most questions. The challenge is learning how to navigate those documents, when they have tough technical terms and symbols. The ```man``` (short for manual)  is a source of documentation for many of the commands we will define here. You can use ```man``` by doing the following:

```
man <name of command>
```

It will not always have the easiest information to understand, so work with it and see. Run ```man``` on ```man``` itself. Enter the following in your command prompt.

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

## Google

Google is another great place to enter a query and find the command you need, or else to take a command and see what it does, or how to use it. This is another important part of independently trying to find answers.

Search for:

```
command line how to move a file
```

You can prepend your search with the name of your shell interpreter or operating system convention:

```
unix command line how to move a file
```

The same thinking can be used to learn about a command you already know:

```
unix command line mv command
```


## Commonly Used Commands

The following list includes commonly used commands that a user types into the command prompt. We will (1) introduce you to the command, (2) provide the basic syntax in an example, and (3) describe the purpose.

### Basics

<table>
  <tr>
    <th>Command</th>
    <th>Syntax Example</th>
    <th>Description</th>
  </tr>  
  <tr>
    <td>```ls<code></td>
    <td><code>ls<code></td>
    <td>List directory contents.</td>
  </tr>  
  <tr>
    <td><code>mv<code></td>
    <td>
      <code>mv source target<code>
      <code>mv original_filename desired_filename<code>
    </td>
    <td>Moves one or more files or directories from one place to another. Since it can "move" files from one filename to another, it is also used to rename files.</td>
  </tr>
  <tr>
    <td><code>cp<code></td>
    <td>
      <code>cp source_file target_file<code><br>
      <code>cp source_file target_directory<code>
      <code>cp source_file_1 source_file_2 target_directory<code>
      <code>cp source_directory target_directory<code>
    </td>
    <td>
      <ul>
        <li>When the program has two arguments of path names to files, the program copies the contents of the first file to the second file, creating the second file if necessary.</li>  
        <li>When the program has one or more arguments of path names of files and following those an argument of a path to a directory, then the program copies each source file to the destination directory, creating any files not already existing.</li>  
        <li>When the program's arguments are the path names to two directories, cp copies all files in the source directory to the destination directory, creating any files or directories needed. This mode of operation requires an additional option flag, typically r, to indicate the recursive copying of directories. If the destination directory already exists, the source is copied into the destination, while a new directory is created if the destination does not exist.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td><code>mkdir<code></td>
    <td><code>mkdir new_directory<code></td>
    <td>Creates a new directory in the current directory.</td>
  </tr>
  <tr>
    <td><code>cd<code></td>
    <td><code>cd directory_name<code></td>
    <td>Changes the user's current directory location.</td>
  </tr>
  <tr>
    <td><code>pwd<code></td>
    <td><code>pwd<code></td>
    <td>Displays the absolute pathname of the current working directory.</td>
  </tr>
  <tr>
    <td><code>rm<code></td>
    <td><code>rm filename<code></td>
    <td>Removes file. Recommend to use <code>rm -i<code> because it asks the user to confirm.</td>
  </tr>
  <tr>
    <td><code>.<code></td>
    <td>
      <code>mv directory/filename .<code>
    </td>
    <td>Refers to the current working directory.</td>
  </tr>
  <tr>
    <td><code>..<code></td>
    <td>
      <code>cd ..<code><br>
      <code>mv directory/filename ..<code><br>
      <code>ls ..<code>
    </td>
    <td>Refers to the immediate parent directory</td>
  </tr>
  <tr>
    <td><code>~<code></td>
    <td>
      <code>cd ~<code><br>
      <code>mkdir ~/Desktop/new-directory<code>
    </td>
    <td>Refers to the user's root directory</td>
  </tr>
  <tr>
    <td><code>/<code></td>
    <td>
      <code>cd /<code>
    </td>
    <td>Refers to the system's root directory.</td>
  </tr>
  <tr>
    <td><code>path/child_path<code></td>
    <td>
      <code>cd path/child_path<code><br>
      <code>mv smells/fragrances/roses .<code><br>
    </td>
    <td><strong>Relative Path</strong> When you are targeting a directory somewhere in your current working directory, you can assume the command prompt interpreter knows your current location and refer to the path inside your directory</td>
  </tr>
  <tr>
    <td><code>/root/path<code></td>
    <td>
      <code>cd /root/path<code><br>
      <code>mv /root/path .<code><br>
    </td>
    <td><strong>Absolute Path</strong> When you are targeting a directory without reference to your current working directory, start your path with <code>/<code>. That will find the root directory, so that you can find a precise path without reference to your current working directory.</td>
  </tr>
  <tr>
    <td><code>cat<code></td>
    <td><code>cat filename<code></td>
    <td>The <code>cat<code> command will display the text in a file.</td>
  </tr>
  <tr>
    <td><code>diff<code></td>
    <td><code>diff file_one file_two<code></td>
    <td>The <code>diff<code> command will display the difference between two files.</td>
  </tr>
  <tr>
    <td><code>date<code></td>
    <td><code>date<code></td>
    <td>Prints the current date and time.</td>
  </tr>
  <tr>
    <td><code>cal<code></td>
    <td><code>cal<code></td>
    <td>Prints a calendar.</td>
  </tr>
  <tr>
    <td><code>say<code></td>
    <td><code>say hello.txt<code></td>
    <td>Uses text-to-speech to read a .txt file.</td>
  </tr>
  <tr>
    <td><code>↑<code> key</td>
    <td></td>
    <td>Finds the last command entered. If initial characters are typed and then <code>↑<code> is pressed, the last command starting with the initial characters will be found.</td>
  </tr>
</table>

### Handy Tricks

**Completion with <code>tab<code>** When you start to type a directory name, you can hit the <code>tab<code> key to let your command prompt to finish the name. Try using the <code>tab<code> button in other contexts, as it can complete other names, too.

**Change directory in ohmyzsh** You do not always have to use <code>cd<code> when you are trying to change directories in the command prompt. Rather than going to <code>cd directory_name<code>, try typing <code>directory_name<code> directly and hitting return. This will perform the same action.

**iTerm session tabs** You can have mutiple command prompt sessions open, tabbed conveniently like browser tabs. Just use CMD + T to open a new tab. To have the new tab reuse your current working directory, follow these steps in iTerm:

<code>Preferences > Profiles > Working Directory > Reuse previous session's directory<code>

### Advanced

For the following commands, use <code>man<code> and Google to determine how they work and how they can support your work on the command line.

+ ```|```
+ ```telnet```
+ ```curl```
+ ```grep```
+ ```echo```
+ ```la | grep .txt```
+ ```tar```
+ ```head```
+ ```tail```
+ ```nano```
