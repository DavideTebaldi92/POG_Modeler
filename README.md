# POG_Modeler
From this repository, you can download the archive "POG_Modeler.zip", containing the main files to run the POG Modeler program.

Specifically, the following files are provided:
- POG_Modeler.p: the POG Modeler program. It is a MATLAB coded file.
- Help_POG.m: this file ascii low-level commands of the POG Modeler program.
- SIMSCAPE_Basic_Blocks.slx: a Simulink file containing the Simscape blocks that must be used for defining the structure of the physical systems to be converted in the POG environment.
- POG_Modeler_Basic_Commands.pdf (for expert users): this file describes the basic internal commands of the POG Modeler Program.

This repository also contains the following directories:
- SIMSCAPE_Examples: A few Simscape examples of physical systems. Each example is a "slx" file containing the Simscape structure of a physical system.
- POG_Examples (for expert users): This directory contains some examples of physical systems. Each example is a "txt" file containing the POG structure of a physical system.

In MATLAB, the POG Modeler can be run from any directory only if you type in the MATLAB Command Window the following commands: 
path(path,'Directory Name')
savepath
where Directory Name is the name of the Directory containing the POG Modeler Program. The original value of the variable "path" can be restored using the MATLAB command restoredefaultpat

The "POG Modeler" is a MATLAB function which can be run in the Command Window using the following command:
POG_Modeler('File name.ext')
where 'File name.ext' is the name of the input file. Three types of input files can be used:
'File_name.slx': a Simscape file with extension "slx" describing the strucure of a physical system using the Simscape blocks contained in the "SIMSCAPE_Basic_Blocks.slx" file.
'File_name.tex': an ascii file with extension "tex" containing the Latex relation automatically generated by the POG Modeler when command "POG_Modeler('File_name.slx')" is used. The use this type of file is suggested only to people who are experienced in using the POG Modeler.
'File_name.txt': an ascii file with extension "txt" describing the structure of a physical system using the low-level POG Modeler commands described in the "POG_Modeler_Basic_Commands". The use this type of file is suggested only to people who are experienced in using the POG Modeler.

By typing "POG Modeler('Help')", the program generates the script "Help_POG.m" containing the ascii low-level commands of the POG Modeler program.

The MATLAB/Simulink files in this repository have been created using MATLAB/Simulink R2023a.

The basic properties of the Power-Oriented Graphs (POG) Technique are described in the following preprint: https://arxiv.org/abs/2409.16948

A video tutorial "POG_Modeler_Video_Tutorial.mp4" is also available in this repository, showing how the POG Modeler can be launched by providing as input a Simscape schematic which is then going to be converted into the system power-oriented model and into the system state-space model.
