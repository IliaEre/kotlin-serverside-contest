@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  ktor-order-api startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and KTOR_ORDER_API_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\ktor-order-api-0.0.1.jar;%APP_HOME%\lib\koin-ktor-3.1.5.jar;%APP_HOME%\lib\ktor-jackson-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-serialization-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-metrics-micrometer-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-server-cio-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-server-host-common-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-server-core-jvm-1.6.7.jar;%APP_HOME%\lib\koin-logger-slf4j-3.1.5.jar;%APP_HOME%\lib\koin-core-jvm-3.1.5.jar;%APP_HOME%\lib\kmongo-coroutine-4.4.0.jar;%APP_HOME%\lib\kmongo-coroutine-core-4.4.0.jar;%APP_HOME%\lib\kotlinx-coroutines-reactive-1.5.2.jar;%APP_HOME%\lib\kotlinx-coroutines-jdk8-1.5.2-native-mt.jar;%APP_HOME%\lib\ktor-http-cio-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-http-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-network-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-utils-jvm-1.6.7.jar;%APP_HOME%\lib\ktor-io-jvm-1.6.7.jar;%APP_HOME%\lib\kotlinx-coroutines-core-jvm-1.5.2.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.6.10.jar;%APP_HOME%\lib\micrometer-registry-prometheus-1.8.2.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.6.10.jar;%APP_HOME%\lib\kmongo-jackson-mapping-4.4.0.jar;%APP_HOME%\lib\kmongo-id-jackson-4.4.0.jar;%APP_HOME%\lib\jackson-module-loader-0.4.0.jar;%APP_HOME%\lib\jackson-databind-2.13.0.jar;%APP_HOME%\lib\jackson-annotations-2.13.0.jar;%APP_HOME%\lib\jackson-core-2.13.0.jar;%APP_HOME%\lib\jackson-module-kotlin-2.13.0.jar;%APP_HOME%\lib\kmongo-async-shared-4.4.0.jar;%APP_HOME%\lib\kmongo-property-4.4.0.jar;%APP_HOME%\lib\kmongo-shared-4.4.0.jar;%APP_HOME%\lib\kmongo-id-4.4.0.jar;%APP_HOME%\lib\kreflect-1.0.0.jar;%APP_HOME%\lib\kotlin-reflect-1.6.0.jar;%APP_HOME%\lib\kotlinx-serialization-json-jvm-1.3.0.jar;%APP_HOME%\lib\kmongo-data-4.4.0.jar;%APP_HOME%\lib\kotlinx-serialization-core-jvm-1.3.0.jar;%APP_HOME%\lib\kotlin-stdlib-1.6.10.jar;%APP_HOME%\lib\slf4j-api-1.7.32.jar;%APP_HOME%\lib\config-1.4.1.jar;%APP_HOME%\lib\jansi-2.4.0.jar;%APP_HOME%\lib\micrometer-core-1.8.2.jar;%APP_HOME%\lib\simpleclient_common-0.12.0.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.6.10.jar;%APP_HOME%\lib\HdrHistogram-2.1.12.jar;%APP_HOME%\lib\LatencyUtils-2.0.3.jar;%APP_HOME%\lib\simpleclient-0.12.0.jar;%APP_HOME%\lib\bson4jackson-2.13.0.jar;%APP_HOME%\lib\simpleclient_tracer_otel-0.12.0.jar;%APP_HOME%\lib\simpleclient_tracer_otel_agent-0.12.0.jar;%APP_HOME%\lib\mongodb-driver-reactivestreams-4.4.0.jar;%APP_HOME%\lib\reactor-core-3.2.22.RELEASE.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\simpleclient_tracer_common-0.12.0.jar;%APP_HOME%\lib\mongodb-driver-core-4.4.0.jar;%APP_HOME%\lib\bson-4.4.0.jar


@rem Execute ktor-order-api
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %KTOR_ORDER_API_OPTS%  -classpath "%CLASSPATH%" io.ktor.server.cio.EngineMain %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable KTOR_ORDER_API_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%KTOR_ORDER_API_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
