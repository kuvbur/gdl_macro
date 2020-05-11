cd /d %~dp0
cd ..
set "gdl_dir=%cd%\gdl"

set "gdl_glob_dir=%cd%\Libraryflobals\gdl"

cd lcf
"C:\Program Files\GRAPHISOFT\ARCHICAD 22\LP_XMLConverter.exe"  createcontainer  macro.lcf "%gdl_dir%">%bat_dir%\lcf_log.txt
"C:\Program Files\GRAPHISOFT\ARCHICAD 22\LP_XMLConverter.exe"  createcontainer  Libraryflobals.lcf "%gdl_glob_dir%">%bat_dir%\lcf_log.txt
"C:\Program Files\GRAPHISOFT\ARCHICAD 22\LP_XMLConverter.exe"  createcontainer  Libraryflobals_and_macro.lcf "%gdl_glob_dir%" "%gdl_dir%">%bat_dir%\lcf_log.txt
