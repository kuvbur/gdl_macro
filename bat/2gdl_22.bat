cd /d %~dp0
cd ..
set "gdl_dir=%cd%\gdl"
set "xml_dir=%cd%\xml"
set "bat_dir=%cd%\bat"
"C:\Program Files\GRAPHISOFT\ARCHICAD 22\LP_XMLConverter.exe"  finalizelibrary -l UTF8 -reportlevel 2 -checkparams "%xml_dir%" "%gdl_dir%" >%bat_dir%\gdl_log.txt