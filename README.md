# make popcorn 
This is a beginner's make tutorial.

# Ingredients

Today's chef suggestion is to create a folder and list the files in it using Make. The topping for it could be to create a scss file and use sass to compile it to css or to start a Vue project from scratch and using npm to install it. 

For that you will need:
- 1 Computer to taste
- 1 Operating System to taste 
- 1 Make Binary (Make installed in your Computer :)
- 1 Shell Program to taste
- 1 Text or Code editor to taste
- 1 File called Makefile
- 1 Project in a programming language to taste
- 1 Task to automate to taste. 


## Directions

1. Open your shell program of choice.

2. Check if your computer have Make installed. 

Mac OS have it by default and any Linux distro will have (should have?) it too. Windows doesn't support shell.

Type on the shell program:
```
make --version
```

2. With the editor of choice, create a file called Makefile and save it the root of the folder of your Project of choice.

In this step you can use your file manager or your shell program of choice to create the file. In for the sake of not messing up any existing project you might have, I would suggest to create an empty folder or project to continue with this tutorial.

3. Pick the task you want to automate. For this tutorial, let's try to create a directory:
```
popcorn: 
	mkdir popcorn

```

4. Now execute in the shell program:

```
$ cd <project>
$ make popcorn
```

5. To verify that the directory was created, let's append  this to the Makefile:

```
list:
	ls -la
```

6. Now execute in the shell program:

```
$ make list
```

The output should list the files and directories in the current folder including the just created directory ```popcorn```.

7. Topping

- Append to the Makefile:

```
file: 
	touch popcorn/style.scss
```
- Execute in the shell program:
```
$ make file
```

8. How to mix the ingredients

A simple makefile consists of "rules" with the following shape:
```
target: prerequisite
  commands
```

- The target is what we reference when running the command make <target>.
- Prerequisites are the dependencies for the target. The target cannot be built successfully without the dependencies first being resolved.
-  If the target or any of its prerequisite files are out of date or missing, then the commands for that target will be executed. Make uses the modification timestamp to avoid duplicate processing. If the timestamp of the dependent files is older than the resulting output, then running Make won’t do anything. 
- The commands are what you want to execute when given an specific target.
	
9. Let the mix rest and think about how to answer to the following questions:
- If we want the step 7 to succeed: how do we make sure the directory popcorn exists before creating the .scss file in it?
- How would you create a target to compile the .scss file to .css? How would you
- How would you create a target to install vue via npm?

You may find some of the answers [here](https://github.com/camilasan/make-popcorn/blob/master/Makefile). 

10. For some extra taste you can add variables:
```
PROJECT := Popcorn

print:
	@echo My project is called $(PROJECT).
```

11. Make provided pre cooked variables to make things easier. They are called automatic variables:

- $< first prerequisite
- $^ list of prerequisites
- $? list of prerequisites that have changed
- $@ target name

On this mix:
```
compile: popcorn/style.scss
	sass popcorn/style.scss popcorn/style.css
```
You can replace popcorn/style.scss for $<:
```
compile: popcorn/style.scss
	sass $< popcorn/style.css
```

12. Includes might make it tastier.

When you need to separate large pieces of logic, besides using [functions](https://www.gnu.org/software/make/manual/html_node/Call-Function.html) you can consider to use includes. For achive it you need to create a file with the extension .mk.

- Create a file called inc.mk.
- Edit inc.mk:
```
INCLUDE_TEXT := This is from the include.
```

- And then in the Makefile append to the target print:
```
@echo $(INCLUDE_TEXT)
```
- Now if you execute the target print the output is:

```
$ make print
My project is called Popcorn.
This is from the include.
```

# Nutrition Facts

1. Make is a build automation tool that automatically builds executable programs and libraries from source code by reading files called Makefiles which specify how to derive the target program. 

2. Make was originally designed to automate the build process of compiled languages (code -> binary) but since the "advent" of web development and the infinite numbers of Javascript frameworks its use had been expanded to so much more. 

3. Make commands are structured shell scripts with extra syntactical sugar. In other words, make can execute any command you would usually execute directly in your shell program.

4. Shell is a program that interprets commands and acts as an intermediary between the user and the inner workings of the operating system. e.g. create a directory, list the files in it. So when you read "Unix Shell" it stands for a command-line interpreter or shell that provides a traditional Unix-like command line user interface.  The shell is analogous to DOS and serves a purpose similar to graphical interfaces like Windows, Mac OS X, and the X Window System.

5. You need a makefile to tell make what to do. Keep in mind that Make uses tabs instead of spaces, so if your editor is set up to replace spaces with tabs then you could find things don’t work as expected. 

6. Make was originally created by Stuart Feldman in April 1976 at Bell Labs. He was inspired to write Make by the experience of a coworker in futilely debugging a program of his where the executable was accidentally not being updated with changes.

7. In the beginning there was only a software called Make but then later due to its popularity Unix included Make as part of the default installation (I believe that is why it is called GNU Make?)

8. Make is platform specific. This is a complication for compiled programming language.

9. Because it is platform specific, cmake was created. cmake is a software that generates Makefiles for the specified platform.

10. "It takes too long to compile." - when we are talking about compiled languages, it might mean too many source files or dependencies. See (Writing makefiles)[https://www.cs.bu.edu/teaching/cpp/writing-makefiles/].

# Conclusion

WIP














