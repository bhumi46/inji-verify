#!/bin/bash
set -e

BASE_DIR=/home/inji

echo "Listing files in $BASE_DIR:"
ls -l $BASE_DIR

echo "Listing feature files:"
ls -l $BASE_DIR/featurefiles/

echo "$BASE_DIR/src/test/resources/config/"
ls -l $BASE_DIR/src/test/resources/config/

echo "$BASE_DIR/test-output/SparkReport/"
ls -l $BASE_DIR/test-output/SparkReport/

echo "$BASE_DIR/src/test/resources/extent.properties"
ls -l $BASE_DIR/src/test/resources/extent.properties || true

echo "$BASE_DIR/src/"
ls -l $BASE_DIR/src/

echo "$BASE_DIR/src/main/java/utils/"
ls -l $BASE_DIR/src/main/java/utils/

java --version

java -jar \
  -Dmodules="$MODULES" \
  -Denv.user="$ENV_USER" \
  -Denv.endpoint="$ENV_ENDPOINT" \
  -Denv.testLevel="$ENV_TESTLEVEL" \
  $BASE_DIR/uitest-injiverify-*.jar
