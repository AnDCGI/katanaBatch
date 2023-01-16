@echo off
rem --------------------------------------------
rem -------- How to use this script ------------
rem --------------------------------------------

rem -- The KATANA Specific section shows some examples for how you can use the KATANA_RESOURCES environment variable --

rem -- KATANA_ROOT should point to your Katana installation directory. --
rem -- KATANA_RESOURCES drives what gets loaded at startup for KATANA. --
rem -- This is how you load tools and plug-ins, both custom and non-custom ones like commercial renderer plug-ins --
rem -- DEFAULT_RENDERER is the environment variable that drives which renderer plug-in is expected by default in a Renderexporttings node. --

rem -- Delete the settings for the renderers that you do not have installed or do not want to use at the same time. --
rem -- The different renderer plug-ins' requirements for environment variables may change. --
rem -- Please refer to the installation instructions for each particular render plug-in for the most up to date information --


rem --------------------------------------------
rem ------------ KATANA Specific ---------------
rem https://learn.foundry.com/katana/dev-guide/EnvironmentVariables.html
rem --------------------------------------------

set "KATANA_TAGLINE=Foundry Support"

rem -- Define the install location for KATANA --
set "KATANA_ROOT=C:\Program Files\Katana5.0v4"

rem -- Make the example projects like the PyMock asset plugins available in KATANA
set "KATANA_RESOURCES=%KATANA_RESOURCES%;%KATANA_ROOT%\plugins\Resources\Examples"


rem !!!!!!!!!!!!! Delete the tools you do not use from the section below !!!!!!!!!!!!! 


rem --------------------------------------------
rem ----------- 3Delight Specific --------------
rem https://www.3delight.com/documentation/display/3DFK/Installation
rem --------------------------------------------

set "DEFAULT_RENDERER=dl"

rem -- Location of where the main 3Delight package is installed --
set "DELIGHT=C:\Program Files\3Delight"

rem -- The 3Delight bin folder is needed in PATH  --
set "PATH=%PATH%;%DELIGHT%\bin"

rem -- Location of the 3Delight for KATANA plug-in --
set "KATANA_RESOURCES=%KATANA_RESOURCES%;%DELIGHT%\3DelightForKatana"


rem --------------------------------------------
rem ------------- Arnold Specific --------------
rem https://docs.arnoldrenderer.com/display/A5KTN/Installation
rem --------------------------------------------

set "DEFAULT_RENDERER=arnold"

rem -- Where you have installed the KtoA plug-in --
set "KTOA_HOME=C:\Program Files\ktoa\ktoa-4.1.3.3-kat5.0-windows"

rem -- The KtoA bin folder is needed in PATH --
set "PATH=%PATH%;%KTOA_HOME%\bin"

rem -- This is how to load the KtoA plug-in --
set "KATANA_RESOURCES=%KATANA_RESOURCES%;%KTOA_HOME%"


rem --------------------------------------------
rem --------- RenderMan 24 Specific ------------
rem https://rmanwiki.pixar.com/display/RFK24/Configuring+Katana
rem --------------------------------------------

set "DEFAULT_RENDERER=prman"

rem -- Location of the RenderMan Pro Server installation --
set "RMANTREE=C:\Program Files\Pixar\RenderManProServer-24.4"

rem -- Location of the PRman plugin for KATANA --
set "RFKTREE=C:\Program Files\Pixar\RenderManForKatana-24.4\plugins\katana5.0"

rem -- This is what is required to load the RfK plugin --
set "KATANA_RESOURCES=%KATANA_RESOURCES%;%RFKTREE%"

rem -- This is a workaround to prevent ImportError with KatanaQueue --
set "PATH=%PATH%;%KATANA_ROOT%\bin"

rem --------------------------------------------
rem ----------- Redshift Specific --------------
rem C:\ProgramData\Redshift\Plugins\Katana\5.0v1\launchRedshift4Katana.bat
rem --------------------------------------------

set "DEFAULT_RENDERER=redshift"

rem -- Location of the RedShift bin folder --
set "REDSHIFT_HOME=C:\ProgramData\Redshift\bin"

rem -- Location of the RedShift plugin for KATANA --
set "REDSHIFT4KATANA_HOME=C:\ProgramData\Redshift\Plugins\Katana\5.0v1"

rem -- This is what is required to load the RedshiftForKatana plugin --
set "PATH=%PATH%;%REDSHIFT_HOME%"
set "KATANA_RESOURCES=%KATANA_RESOURCES%;%REDSHIFT4KATANA_HOME%"


rem --------------------------------------------
rem ------------ Deadline Specific -------------
rem https://docs.thinkboxsoftware.com/products/deadline/10.2/1_User%20Manual/manual/app-katana.html
rem --------------------------------------------

rem -- Location containing Tabs\DeadlineKatanaClient.py from [Repository]\submission\Katana\Client\DeadlineKatanaClient.py
set "KATANA_RESOURCES=%KATANA_RESOURCES%;C:\KatanaSubmitter"


rem !!!!!!!!!!!!! Stop deleting parts of the script. Leave the rest of this script alone !!!!!!!!!!!!!


rem --------------------------------------------
rem --------------- Start Katana ---------------
rem https://learn.foundry.com/katana/Content/tg/launch_modes/katana_launch_modes.html
rem --------------------------------------------
"%KATANA_ROOT%\bin\katanaBin.exe"