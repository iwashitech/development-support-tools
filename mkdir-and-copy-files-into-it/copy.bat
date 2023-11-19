@echo off
SET dirfile=dir.txt
SET listfile=list.txt
SET curdir=C:\Users\user_name\Desktop\mkdir-and-copy-files-into-it\
SET dirfrom=C:\Users\user_name\Desktop\mkdir-and-copy-files-into-it\from

FOR /F %%D IN (%dirfile%) DO (
    mkdir %curdir%\%%D
    FOR /F %%I IN (%listfile%) DO (
        copy %dirfrom%\%%I %curdir%\%%D\%%I
    )
)
