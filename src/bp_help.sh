#!/bin/sh

nome="Bash_Programing"
version="1.1.0"
year="2020"
author="Joao Roberto"
url="https://github.com/joaoroberto50/Bash_Programing"
description="This is a simple set of scripts that returns a simple code structure for some languages, aiming to streamline code writing in text editors and simpler code editors, mainly for command line editors."
archives=$(ls)

echo -e "\n$nome - $version - $year\nAuthor: $author\n$url\n$description\n\nThe structure of the scripts is: bp \(from Bash Programing\) accompanied by an underline and the extension of the language you want to use.\n\n\tEx:\n\tbp_py\n\nYou can direct the output to a file\n\n\tEx:\n\tbp_py \> example.py\n\nYou can also pass as argument a program, to open a file that will be created with an automatic name.\n\n\tEx:\n\tbp_py - vim"

echo -e "\nWe suport the following languages: \nc, c++, c#, go, html, java, php, python, rust n' shell script\n"

echo $archives
