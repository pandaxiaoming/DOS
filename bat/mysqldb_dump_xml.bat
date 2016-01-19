set "Ymd=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%-%time:~9,2%"
mysqldump --opt -u root --password=password --databases --add-drop-database --skip-add-drop-table --skip-add-locks --skip-comments --skip-disable-keys --skip-quote-names --ssl=OFF --default-character-set=utf8 --complete-insert --extended-insert --xml %1 > %1_%Ymd%.xml
pause
