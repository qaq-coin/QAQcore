CP="conf/;classes/;lib/*"
SP=src/java/

/bin/mkdir -p classes/

javac -sourcepath $SP -classpath $CP -d classes/ src/java/nxt/*.java src/java/nxt/*/*.java src/java/fr/cryptohash/*.java || exit 1

/bin/rm -f qaq.jar 
jar cf qaq.jar -C classes . || exit 1
/bin/rm -rf classes

echo "qaq.jar generated successfully"
