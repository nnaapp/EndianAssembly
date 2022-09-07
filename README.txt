Compilation Instructions:
Included are the standard libraries Kernel32 and User32, which come stock with Masm32.
These are included for ease of compilation, but generally one would need Masm32 installed to use these default files.
I did not create these, they are Masm32 default tools in the install directory.

To compile, use the command  ` ml.exe /Fe endian.exe Main.asm /link /subsystem:windows /defaultlib:kernel32.lib /defaultlib:user32.lib `
in Visual Studio, I used Visual Studio Community 2019. Presumably this would work from any command prompt in the source directory
IF you have ml.exe/masm assembler installed. VSC comes with ml/masm stock, which makes it easier.
No matter what you do, ML.exe IS REQUIRED one way or another.

This will compile .obj files and link them into an executable named endian.exe, which can be then be ran.

This executable will bring up a message box with the endianness of your system, using a windows message box API.
THIS MEANS IT IS NOT COMPATIBLE WITH NON-WINDOWS SYSTEMS! Do not run on Mac OS or Linux systems, it will not work.

Side note: The original path for kernel32 and user32 was C:\masm32\include or C:\masm32\lib,
this was changed for ease of compilation for the submission. I wanted this to be noted, as those directories are what it would be
on a default masm32 install computer.