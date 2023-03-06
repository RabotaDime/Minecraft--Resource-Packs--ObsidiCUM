call "init.include.cmd"


rem -- Удаляем старый архив полностью, чтобы не было внутри остаточных файлов
del "%_arch_file%"


pushd "%_work_dir%\ПАК"
"%_7zip_exe%" u -tzip "%_arch_file%" *
popd


rem { Особый режим для работы с переменными в цикле ниже
setlocal enabledelayedexpansion

FOR /D %%G in ("%_work_dir%\ФИКСЫ\*") DO (

    rem echo [ %%~nxG ]
    rem echo [%CD%]
    rem call "files_count" "%_prev_dir%\%%~nxG"

    rem echo ["%_work_dir%\ФИКСЫ\%%~nxG"]
    pushd "%_work_dir%\ФИКСЫ\%%~nxG"
    "%_7zip_exe%" u -xr@"%_exclude_cfg%" -tzip "%_arch_file%" *
    popd

)

endlocal
rem } Конец особого режима работы с переменными


echo ***
start "CopyLocal" cmd /c call "copy-local.cmd"
echo ***


timeout /t 25

