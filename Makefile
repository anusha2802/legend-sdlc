# Super important to make sure that you set the gitlab callback URLs to match what is being used in
# the browser. So if you access via http://localhost:7070/api/swagger, then the callback URLS better
# have http://localhost:7070/api/... as the prefix

SHADED_JAR_PATH		= ./legend-sdlc-server/target/legend-sdlc-server-0.73.2-SNAPSHOT-shaded.jar

all:
	ls -lrt ./legend-sdlc-server/target/*shaded.jar | tail -n5
	@ echo "Using ${SHADED_JAR_PATH} ... THIS MAY NOT BE WHAT YOU BUILT!!" 
	@ echo ""
	@ echo ""
	@ echo "Super important to make sure that you set the gitlab callback URLs to match what is being used in"
	@ echo "the browser. So if you access via http://localhost:7070/api/swagger, then the callback URLS better"
	@ echo "have http://localhost:7070/api/... as the prefix"
	@ echo ""
	@ echo ""
	@ sleep 5
	java -cp ${SHADED_JAR_PATH} org.finos.legend.sdlc.server.LegendSDLCServer server ./config/config.yaml

auth:
	echo "Open browser window to http://localhost:7070/api/auth/authorize"
