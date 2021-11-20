git svn fetch
git push origin origin/trunk:trunk

docker run --rm -ti --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 -v%CD%:C:\code -wC:\code galeksandrp/travistest:docker-servercore-ltsc2022 update_gcc.bat
docker run --rm -ti --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 -v%CD%:C:\code -wC:\code galeksandrp/travistest:docker-servercore-ltsc2022 cmd /c set MPCBE_MINGW=%%SYSTEMDRIVE%%\mingw^&^& update_gcc.bat
docker run --rm -ti --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 -v%CD%:C:\code -wC:\code galeksandrp/travistest:docker-servercore-ltsc2022 build.bat x64 Packages

pause
