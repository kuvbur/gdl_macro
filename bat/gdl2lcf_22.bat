cd /d %~dp0
cd ..

set "gdl_dir=%cd%\gdl"
set "gdl_glob_dir=%cd%\Libraryflobals\gdl"
set "bat_dir=%cd%\bat"

cd lcf
"C:\Program Files\GRAPHISOFT\ARCHICAD 22\LP_XMLConverter.exe"  createcontainer  macro.lcf -compress 9 "%gdl_dir%">"%bat_dir%\_lcf_log.txt"
"C:\Program Files\GRAPHISOFT\ARCHICAD 22\LP_XMLConverter.exe"  createcontainer  Libraryflobals.lcf -compress 9 "%gdl_glob_dir%">"%bat_dir%\_lcf_log.txt"
"C:\Program Files\GRAPHISOFT\ARCHICAD 22\LP_XMLConverter.exe"  createcontainer  Libraryflobals_and_macro.lcf -compress 9 "%gdl_glob_dir%" "%gdl_dir%">"%bat_dir%\_lcf_log.txt"
