cd /d %~dp0
cd ..
set "converter=C:\Program Files\GRAPHISOFT\ARCHICAD 25\LP_XMLConverter.exe"
set "gdl_dir=%cd%\gdl"
set "hsf_dir=%cd%\hsf"
set "lcf_dir=%cd%\lcf"


RD /S /Q  "%hsf_dir%"
MD "%hsf_dir%"
cd "%hsf_dir%"
"%converter%"   l2hsf -l UTF8  -compatibility 25 "%gdl_dir%" "%hsf_dir%" >"_hsf_log.txt"


RD /S /Q "%lcf_dir%"
MD "%lcf_dir%"
cd "%lcf_dir%"
"%converter%" createcontainer common.lcf -compress 9 "%gdl_dir%">"_lcf_log.txt"

