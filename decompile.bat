call :treeProcess
goto :eof

:treeProcess
for %%f in (*.nut) do (
	C:\Users\Admin\Documents\th155-decomp\nutcracker.exe %%f > %%f.nut
	mv %%f.nut %%f
)
for /D %%d in (*) do (
	cd %%d
	call :treeProcess
	cd ..
)
exit /b