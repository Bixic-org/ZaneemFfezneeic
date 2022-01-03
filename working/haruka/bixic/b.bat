@echo off
setlocal enabledelayedexpansion
chcp 65001
for /f %%a in (lanva1.txt) do (
  a %%a %1 > lanva20.txt
)

set rem = 0
for /f %%b in (lanva1.txt) do (
  for /f %%c in (lanva20.txt) do (
    if %%b==%%c (
      !rem! = !rem% + 1
    )
  )
)
%1 > lanva300.txt
ee > lanva300.txt
!rem! > lanva300.txt