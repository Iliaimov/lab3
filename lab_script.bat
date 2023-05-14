chcp 65001
cd "batch"
mkdir "Скрытая папка"
mkdir "Не скрытая папка"
attrib +h "Скрытая папка"
xcopy /?
xcopy /? > "Не скрытая папка\copyhelp.txt"
xcopy "Не скрытая папка\copyhelp.txt" "Скрытая папка\copied_copyhelp.txt"