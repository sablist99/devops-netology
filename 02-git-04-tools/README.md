1) 	Команда - git show aefea\
	Полный хеш коммита - aefead2207ef7e2aa5dc81a34aedf0cad4c32545\
	Комментарий - Update CHANGELOG.md
	

2)	Команда - git show 85024d3\
	Тег - v0.12.23

      
3)  Командой git log b8d720 --pretty=format:'%h' --graph -5 узнаем количество родителей и их хэши:
9ea88f22fc и 56cd7859e0\
Альтернативный вариант - git show b8d720^1 --oneline и git show b8d720^2 --oneline (Если бы второго родителя не было - получили бы ошибку)


4) Командой git log v0.12.23..v0.12.24 --oneline выводим коммиты, которые были сделаны между двумя тегами:\
b14b74c493 \[Website] vmc provider links\
3f235065b9 Update CHANGELOG.md\
6ae64e247b registry: Fix panic when server is unreachable\
5c619ca1ba website: Remove links to the getting started guide's old location\
06275647e2 Update CHANGELOG.md\
d5f9411f51 command: Fix bug when using terraform login on Windows\
4b6d06cc5d Update CHANGELOG.md\
dd01a35078 Update CHANGELOG.md\
225466bc3e Cleanup after v0.12.23 release


5) Командой git log -S"func providerSource(" --oneline выведем коммит, где была создана фцнкция:\
8c928e8358 main: Consult local directories as potential mirrors of providers\
Так как 


6) Командой git grep --heading --break "globalPluginDirs" узнаем имя файла, в котором определена функция - plugins.go\
	Командой git log -L:globalPluginDirs:plugins.go выводим коммиты, в которых менялась функция:\
commit 78b12205587fe839f10d946ea3fdc06719decb05\
commit 52dbf94834cb970b510f2fba853a5b49ad9b1a46\
commit 41ab0aef7a0fe030e84018973a64135b11abcd70\
commit 66ebff90cdfaa6938f26f908c7ebad8d547fea17\
commit 8364383c359a6b738a436d1b7745ccdce178df47


7) Командой git log -S"synchronizedWriters" выведем все упоминания этой функции. Очевидно, что автор функции - это автор самого раннего коммита в выводе:\
artin Atkins <mart@degeneration.co.uk>


