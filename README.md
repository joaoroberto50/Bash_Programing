# Bash_Programing
A simple set of scripts that returns a simple code structure for some languages, using shellscript.

This project is inspired by the Bashacks project, available [here](https://github.com/merces/bashacks), bringing only functions that help the code creation of some programming languages, providing the basic structure of the language, which is very useful, especially when we are using text editors by the command line.

## How to install
First, clone this repository:
```
git clone https://github.com/joaoroberto50/Bash_Programing
```
Second, use the make command to call the makefile:
```
make
```
This going generate a archive named bash programing.sh, now you have to give permission to execute for him:
```
chmod +x bash_programing.sh
```
Now just install using the following commands
```
make install
source bash_programing.sh
```
Done, now Bash_Programing is available for its user. 
To use just follow the example below:
```
$ bp_cpp
#include <iostream>

int main(int argc, char const *argv[]) {
	/*08-11-2020 13:24:15
	pt_BR.UTF-8
	user in local*/

	return 0;
}
```
You can also pass the name of a publisher as an argument to start this code. Example:
```
bp_cpp vim
```
For more details use ```bp_help```.

## How to unistall
Just use use the comand make unistall and make clean inside the folder that you cloned the project
```
make unistall
make clean
```

## Bugs and suggestions
If you found any bugs or have any suggestions for improvement, put them [here](https://github.com/joaoroberto50/Bash_Programing/issues)

Feel free to contribute to this project. Thanks!
