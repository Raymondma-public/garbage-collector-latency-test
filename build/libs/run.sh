case=example-list12

mkdir $case
cd $case

enableGCOpt="UseEpsilonGC"
/usr/lib/jvm/java-17-openjdk-amd64/bin/java -javaagent:../jHiccup.jar=-l,$enableGCOpt.hlog -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$case-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar ../JVMBenchmark-1.0-SNAPSHOT-$case.jar

enableGCOpt="UseSerialGC"
/usr/lib/jvm/java-17-openjdk-amd64/bin/java -javaagent:../jHiccup.jar=-l,$enableGCOpt.hlog -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$case-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar ../JVMBenchmark-1.0-SNAPSHOT-$case.jar

enableGCOpt="UseParallelGC"
/usr/lib/jvm/java-17-openjdk-amd64/bin/java -javaagent:../jHiccup.jar=-l,$enableGCOpt.hlog -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$case-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar ../JVMBenchmark-1.0-SNAPSHOT-$case.jar

enableGCOpt="UseConcMarkSweepGC"
/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:../jHiccup.jar=-l,$enableGCOpt.hlog -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$case-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar ../JVMBenchmark-1.0-SNAPSHOT-$case.jar

enableGCOpt="UseG1GC"
/usr/lib/jvm/java-17-openjdk-amd64/bin/java -javaagent:../jHiccup.jar=-l,$enableGCOpt.hlog -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$case-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar ../JVMBenchmark-1.0-SNAPSHOT-$case.jar

enableGCOpt="UseShenandoahGC"
/usr/lib/jvm/java-17-openjdk-amd64/bin/java -javaagent:../jHiccup.jar=-l,$enableGCOpt.hlog -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$case-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar ../JVMBenchmark-1.0-SNAPSHOT-$case.jar

enableGCOpt="UseZGC"
/usr/lib/jvm/java-17-openjdk-amd64/bin/java -javaagent:../jHiccup.jar=-l,$enableGCOpt.hlog -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$case-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar ../JVMBenchmark-1.0-SNAPSHOT-$case.jar

enableGCOpt="UseC4GC"
/opt/zing/zing-jdk17/bin/java -javaagent:../jHiccup.jar=-l,$enableGCOpt.hlog -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions  -Xlog:gc,safepoint:./gc-$case-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar ../JVMBenchmark-1.0-SNAPSHOT-$case.jar
