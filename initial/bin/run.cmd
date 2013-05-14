@echo off
REM *********************************************************
REM * This is a DRAFT start script for development use only.
REM * For production use, please start OpenESP as a service
REM *********************************************************

echo "Starting OpenESP"

SET OPENESP_HOME=%~dp0..
SET SOLR_HOME=%OPENESP_HOME%\conf\solr
SET SOLR_DATA_DIR=%OPENESP_HOME%/data/solr
SET CATALINA_OPTS=-Xms512m -Xmx1024m -Dsolr.solr.home="%SOLR_HOME%" -Dopenesp.home="%OPENESP_HOME%" -Dsolr.data.dir="%SOLR_DATA_DIR%" -Dorg.apache.manifoldcf.configfile="%OPENESP_HOME%\conf\mcf\properties.xml" -Dlog4j.configuration="file:///%OPENESP_HOME%\conf\solr\log4j.properties" -Dlog4j.debug=true -Dsolr.log.dir="%OPENESP_HOME%\logs\solr"
echo CATALINA_OPTS is %CATALINA_OPTS%

cd "%OPENESP_HOME%\tomcat\bin"
catalina.bat run
