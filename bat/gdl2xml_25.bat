cd /d %~dp0
cd ..
set "gdl_dir=%cd%\gdl"
set "xml_dir=%cd%\xml"
set "hsf_dir=%cd%\hsf"
set "bat_dir=%cd%\bat"

"C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"  l2x -l UTF8 "%gdl_dir%" "%xml_dir%" >"%bat_dir%\_xml_log.txt"
"C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"  l2hsf "%gdl_dir%" "%hsf_dir%" >"%bat_dir%\_hsf_log.txt"

set "gdl_glob_dir=%cd%\Libraryflobals\gdl"
set "xml_glob_dir=%cd%\Libraryflobals\xml"
set "hsf_glob_dir=%cd%\Libraryflobals\hsf"

"C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"  l2x -l UTF8 "%gdl_glob_dir%" "%xml_glob_dir%" >"%bat_dir%\_xml_glob_log.txt"
"C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"  l2hsf "%hsf_glob_dir%" "%xml_glob_dir%" >"%bat_dir%\_hsf_glob_log.txt"

"C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"  createcontainer  macro.lcf -compress 9 "%gdl_dir%">"%bat_dir%\_lcf_log.txt"