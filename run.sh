# param validation
case_name=$1
if [[ -z $case_name ]]; then
  echo "Please provide test case name"
  echo "e.g. ./run.sh \"test-1\""
  exit 1
fi

# rebuild the jar
./gradlew clean jar

proj_root_dir=$(realpath .)
build_lib_dir=$(realpath ./build/libs)

# create required folder
mkdir -p results/"$case_name"
cd results/"$case_name"


function get_arguments() {
  enableGCOpt=$1
  enableGCOptWithPrefix=""

  commonArg="-javaagent:$proj_root_dir/jHiccup.jar=-l,$enableGCOpt.hlog -Xms5G -Xmx5G -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions $enableGCOptWithPrefix -Xlog:gc,safepoint:./gc-$case_name-$enableGCOpt.log  -Dcom.sun.management.jmxremote.port=9010 -Dcom.sun.management.jmxremote.rmi.port=9010 -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -jar $build_lib_dir/JVMBenchmark-1.0-SNAPSHOT.jar"
  echo "$commonArg"
}

/usr/lib/jvm/java-17-openjdk-amd64/bin/java $(get_arguments UseEpsilonGC)
/usr/lib/jvm/java-17-openjdk-amd64/bin/java $(get_arguments UseSerialGC)
/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java $(get_arguments UseParallelGC)
/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java $(get_arguments UseConcMarkSweepGC)
/usr/lib/jvm/java-17-openjdk-amd64/bin/java $(get_arguments UseG1GC)
/usr/lib/jvm/java-17-openjdk-amd64/bin/java $(get_arguments UseShenandoahGC)
/usr/lib/jvm/java-17-openjdk-amd64/bin/java $(get_arguments UseZGC)
/opt/zing/zing-jdk17/bin/java $(get_arguments UseZST)
