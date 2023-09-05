cd /d %~dp0
cd ..
set "gdl_dir=%cd%\gdl"
set "hsf_dir=%cd%\hsf"
set "lcf=%cd%\lcf\common.lcf"
set "bat_dir=%cd%\bat"

"C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"  l2hsf -l UTF8 -compatibility AC25 "%gdl_dir%" "%hsf_dir%" >"%bat_dir%\_hsf_log.txt"
"C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"  createcontainer  "%lcf%" -compress 9 "%gdl_dir%">"%bat_dir%\_lcf_log.txt"
