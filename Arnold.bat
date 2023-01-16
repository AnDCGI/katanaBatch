@echo off

rem --------------------------------------------
rem -------- How to use this script ------------
rem --------------------------------------------

rem -- The KATANA Specific section shows some examples for how you can use the KATANA_RESOURCES environment variable --

rem -- KATANA_ROOT should point to your Katana installation directory. --
rem -- KATANA_RESOURCES drives what gets loaded at startup for KATANA. --
rem -- This is how you load tools and plug-ins, both custom and non-custom ones like commercial renderer plug-ins --
rem -- DEFAULT_RENDERER is the environment variable that drives which renderer plug-in is expected by default in a Renderexporttings node. --

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
rem --------------- Start Katana ---------------
rem https://learn.foundry.com/katana/Content/tg/launch_modes/katana_launch_modes.html
rem --------------------------------------------
"%KATANA_ROOT%\bin\katanaBin.exe"