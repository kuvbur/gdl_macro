cd /d %~dp0
cd ..
set "gdl_dir=%cd%\gdl"
set "xml_dir=%cd%\xml"
set "bat_dir=%cd%\bat"
"C:\Program Files\GRAPHISOFT\ARCHICAD 22\LP_XMLConverter.exe"  l2x "%gdl_dir%" "%xml_dir%" >%bat_dir%\xml_log.txt