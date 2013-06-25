set HOME=C:\oracle\fmw
set MWHOME=%HOME%
set WLSHOME=%MWHOME%\wlserver_10.3
set SOAHOME=%MWHOME%\Oracle_SOA
set ORACLE_HOME=%MWHOME%\Oracle_SOA
set WLSDOMAIN=%MWHOME%\admin\domains
set OSBHOME=%MWHOME%\Oracle_OSB
set JAVA_HOME=%MWHOME%\jdk1.6.0_24
set ANTHOME=%MWHOME%\jdeveloper\ant
mkdir %MWHOME%\cacheDir

set CLASSPATH=%CLASSPATH%;
set CONFIG_JVM_ARGS= -Dpython.cachedir=%MWHOME%\cacheDir -Xms512m -Xmx1024m -XX:PermSize=512m -XX:MaxPermSize=512m

set PATH=%JAVA_HOME%\bin;%PATH%;%ORACLE_HOME%\bin;%ORACLE_HOME%\opmn\bin;%ORACLE_HOME%\OPatch;%WLSHOME%\server\bin;%ORACLE_HOME%\common\bin;%ANTHOME%\bin;.;