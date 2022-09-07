Compilation Instructions:
To compile, use the command  ` ml.exe /Fe endian.exe Main.asm /link /subsystem:windows /defaultlib:kernel32.lib /defaultlib:user32.lib `
in Visual Studio, I used Visual Studio Community 2019. Presumably this would work from any command prompt in the source directory
IF you have ml.exe/masm assembler installed. VSC comes with ml/masm stock, which makes it easier.
No matter what you do, ML.exe IS REQUIRED one way or another.

This will compile .obj files and link them into an executable named endian.exe, which can be then be ran.

This executable will bring up a message box with the endianness of your system, using a windows message box API.
THIS MEANS IT IS NOT COMPATIBLE WITH NON-WINDOWS SYSTEMS! Do not run on Mac OS or Linux systems, it will not work.

MASM32 is REQUIRED as it has the kernel32 and user32 libraries, they should be installed at the default directory.
(or change the includes to match, I got tired of fighting Visual Studio on path issues)