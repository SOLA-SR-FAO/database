﻿@echo off

set psql_path=%~dp0
set psql_path="%psql_path%psql\psql.exe"
set host=localhost
set dbname=sola_sr
set port=5433

set username=postgres
set archive_password=?
REM set label=Enter State (.....)

REM set lga=Enter LGA  (....)

set createDB=NO


set /p host= Host name [%host%] :

set /p port= Port [%port%] :

set /p dbname= Database name [%dbname%] :

set /p username= Username [%username%] :

REM set /p label= State: [%label%] :

REM set /p lga= Lga office code: [%lga%] :


set rulesPath=rules\
set extensionPath=extension\
set utilitiesPath=utilities\
set migrationPath=migration\
set changesetPath=changeset\
set label=SR


REM The Database password should be set using PgAdmin III. When connecting to the database, 
REM choose the Store Password option. This will avoid a password prompt for every SQL file 
REM that is loaded. 
REM set /p password= DB Password [%password%] :


echo
echo
echo Starting Build at %time%
echo Starting Build at %time% > build.log 2>&1


REM echo the files in the folder state/changeset
for /f "eol=: delims=" %%F in (
  'dir ..\database\database-%label%\%changesetPath%\*.sql /b /a-d /one   2^>nul'
) do echo  %%F 

echo the files in the folder changeset  >> build.log 2>&1
for /f "eol=: delims=" %%F in (
  'dir %changesetPath%\*.sql /b /a-d /one   2^>nul'
) do echo  %%F 

echo select system.set_system_id('%label%')  >> build.log 2>&1

echo Creating database...
echo Creating database... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=sola.sql >> build.log 2>&1

echo Loading business rules...
echo Loading SOLA business rules... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%business_rules.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_generators.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_application.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_service.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_ba_unit.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_cadastre_object.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_rrr.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_source.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_bulk_operation.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_public_display.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_spatial_unit_group.sql >> build.log 2>&1


echo State: %label% >>  build.log 2>&1
echo Loading   Extensions...
echo Loading   Extensions... >> build.log 2>&1
echo Loading Spatial Config... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=..\database\database-%label%\%extensionPath%spatial_config.sql >> build.log 2>&1
echo Loading Spatial Config... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%utilitiesPath%reset_srid.sql >> build.log 2>&1
echo Loading Table Changes... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%extensionPath%table_changes.sql >> build.log 2>&1
echo Loading   Dispute Module... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%extensionPath%dispute_module.sql >> build.log 2>&1
echo Loading Reference Data... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%extensionPath%reference_data.sql >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=..\database\database-%label%\%extensionPath%reference_data.sql >> build.log 2>&1

echo Loading   Business Rules... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=..\database\database-%label%\%extensionPath%business_rules.sql >> build.log 2>&1
echo Loading   Cadastre Functions... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=..\database\database-%label%\%extensionPath%get_cadastre_functions.sql >> build.log 2>&1
echo Loading   Systematic Registration Reports... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%extensionPath%systematic_registration_reports.sql >> build.log 2>&1
echo Loading   User Roles... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%extensionPath%users_roles.sql >> build.log 2>&1
echo Loading   LGA and Ward Boundaries... >> build.log 2>&1

%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=..\database\database-%label%\%migrationPath%populate_sug.sql >> build.log 2>&1

echo Loading   Systematic Registration Reports... >> build.log 2>&1
%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%extensionPath%create_generator_nr.sql >> build.log 2>&1

echo the files in the folder changeset  >> build.log 2>&1
for /f "eol=: delims=" %%F in (
  'dir %changesetPath%\*.sql /b /a-d /one   2^>nul'
) do %psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=%changesetPath%\%%F  >> build.log 2>&1

%psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --command="select system.set_system_id('%label%')" >> build.log 2>&1

for /f "eol=: delims=" %%F in (
  'dir ..\database\database-%label%\%changesetPath%\*.sql /b /a-d /one   2^>nul'
) do %psql_path% --host=%host% --port=%port% --username=%username% --dbname=%dbname% --file=..\database\database-%label%\%changesetPath%\%%F  >> build.log 2>&1


echo Finished at %time% - Check build.log for errors!
echo Finished at %time% >> build.log 2>&1
pause
