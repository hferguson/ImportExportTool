@echo off
REM 
REM This application depends on there being a java runtime engine (JRE) at version 7 vers71 or better
REM Set the following parameters based on your setup
REM
REM JREDIR - base directory where JDK or JRE is installed
REM PROPFILE - path to properties file (if just a filename, properties file is assumed to be in same directory as this batch file).
REM INPUTFILE - path to Excel spreadsheet to be parsed 
REM
REM NOTE: anything else that is configurable is in the properties file. Use generic.properties as a guide

set PROPFILE=DND-POC.properties
set INPUTFILE=Import File DND 2018-02-09.xlsx
set JREDIR=D:\app\Java\jre7
set JAVA=%JREDIR%\bin\java
echo Using path %JAVA% for JRE
%JAVA% -cp "ImportExportUtil.jar;lib/*" ca.hferguson.util.DataMigrator %PROPFILE% "%INPUTFILE%"
