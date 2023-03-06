@echo off

rem -- UTF8 Code Page
chcp 65001

rem -- Параметры 
@set _pack_name=ObsidiCUM
@set _game_ver=1.17.1
@set _pack_ver=1
@set _pack_file=%_pack_name%-game.%_game_ver%
@set _datapack_name=zfixes

@set _work_dir=D:\FILES\DESKTOP\CURRENT-DESKTOP\Гачи пак Мэлу\%_pack_name%\PROJECT
@set _7zip_exe=C:\APPS\UTILS\7Zip\7z.exe

@set _arch_file=%_work_dir%\RESULT\%_pack_name%.zip
@set _exclude_cfg=%_work_dir%\exclude.cfg

cd "%_work_dir%"

