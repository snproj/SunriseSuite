---
title: "Habits"
author: John Doe
date: March 22, 2005
output: pdf_document
highlight: tango
---
# SunriseSuite
These are probably the things I actually use most day-to-day amongst the programs I've written. They're a series of Bash tool that I wrote, some for fun, others to actually help me do stuff more easily on the terminal.

## Tools in order of usefulness
### nav
Easily the program I use the most from here. It's a simple file navigator. Run `nav` and you'll be greeted with a list of the files from a normal `ls` call, but with numbers. Choose a directly to navigate to next by entering that number. For example, if you see:
```
1: my_file
2: my_directory1
3: my_directory2
```
Then enter `3` to go to `my_directory2` (it's just `cd` under the hood). You'll still be in `nav`, just from inside `my_directory2` now, and are free to continue navigating in this manner. You can exit at any time by entering a comma `,`.

**Important:**
If you just run `nav`, when you exit you'll be left in the original directory you started navigating from. Therefore, I find it useful to `alias snav='source nav'`, which will solve this.

You can also type in any commands and it should execute, so `cat my_file` would work. The only thing is tab autocomplete is not supported, as well as command history.

Since the underlying commands are really just `cd` and `ls`, there's also a bunch of options that basically pass through to those two. Type `nav --help` for more info.

### mountdisc
Simple utility to mount a physical CD drive into the filesystem. The mounting folder name is hardcoded as `~/mountCD`. Type `mountdisc` and you'll be prompted to create that folder if it doesnt exist, and then it'll attempt to load the CD into that folder.

### msg (defunct)
It's a script to send quick messages from the terminal straight to close friends over Telegram. I used to use this a lot. Nominally, the syntax is
```
msg <name abbrev.> <message> 
```
where `<name abbrev.>` was a set of hardcoded acronyms for my friends' names, for example `ik` (for a friend whose intials were those letters).

However, the real idea was that I would then write under `.bash_aliases`:
```
alias ik='msg ik ' # note the ending space
```
and so I could just type `ik hi there!` in the terminal and it would send `hi there!` over Telegram to him. This kept the syntax on my end really minimal (just the name acronym for each friend) while keeping everything in one program `msg`.

Unfortunately, it seems like Telegram-Cli doesn't like my script anymore and I keep having to manually reinstall it for it to work for a period and then break again; it didn't use to do this.

### jot
Basic note-taking thing for when you have an idea that won't last more than 10 seconds in your head and you wanna write it down.
```
jot <title>/<body>
# Example
jot groceries for today/1 potato
```

The first time, you'll be prompted to create the hardcoded directory `~/.jot` where your notes will be kept. You can refer to them later by just typing `jot` and selecting the note by entering its number. `jot -d` will similarly allow you to pick a note, but will then delete the note you select (without printing to screen). Comma `,` will exit from the menu.

### stk
Your own personal stackframe, so that when you go dpown the rabbit hole researching for something, or doing one chore that leads to the next, or so on, you can remember what you were doing before that led to this, and what led to that, and so on. Similar idea to `MyStackframe` from my very early days, but in a more sensible Bash form.

Type `stk` to be given a prompt. Type in whatever you're doing/looking for at the time (let's say `how to filter list in Java`) and it'll be pushed onto the stack.

Let's say that in the course of looking for that, you need to research `how to declare lists`. Well, type that in and it's pushed on there.

Then you realize that in order to do *that*, you need to research `what kinds of list implementations does java have?` so you type that in and push it onto the stack.

`stk` always shows you your topmost task, and after you're done searching for java's list implementations you press `ENTER` without entering any text to pop the stack and remember your previous task of learning how to declare lists, and pop after that to remember that you were originally just trying to filter a list. Comma `,` exits at any time.

### lydl
It pulls a single webpage for clean viewing on `less`. Stands for **ly**nx -**d**ump \<url\> | **l**ess, and is more or less precisely that. Usage is `lydl <web url>`.

### ety
Search up the etymology of a word with `ety <word>`. Uses a pattern in the URL naming of Etymonline.com.

### mrand
Stands for **man**ual **ran**dom and gives you a rapidly changing number on the screen with a specified number of digits. Press `ENTER` at any point to type a newline and thus inadvertently "create" a random number. Usage is `mrand <number of digits>`. Exit with `ctrl + C`.

### tjpg
Display a `.jpg` file in ASCII with color. Zoom out of terminal to the max for best effects. It's just a wrapper around the tool `jp2a` with some options, as well as a call to `clear` the screen before displaying the image.

### dps and dpsa
Personal tools for writing my story using DualWriter (in another repo). Simply put, `dps` saves me the trouble of writing two of the arguments to DualWriter (which are long file paths) and `dpsa` copies it to a hardcoded file address outside of wsl. That was because before Windows 11 getting files out of wsl was a bit of a pain.

This code itself will probably not serve anyone else too well, but with minor modifications (changing the hardcoded addresses) it can become invaluable to a workflow with DualWriter (until I improve DualWriter itself).