#$enableGCOpt="UseParallelGC"
#$enableGCOpt="UseConcMarkSweepGC"
#$enableGCOpt="UseG1GC"
#$enableGCOpt="UseShenandoahGC"
#$enableGCOpt="UseEpsilonGC"
$enableGCOpt="UseZGC"
echo java -javaagent:jHiccup.jar -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar JVMBenchmark-1.0-SNAPSHOT.jar
java -javaagent:jHiccup.jar -XX:+PrintCommandLineFlags -XX:+UnlockExperimentalVMOptions -XX:+$enableGCOpt -Xlog:gc,safepoint:./gc-$enableGCOpt.log  -D"com.sun.management.jmxremote.port"=9010 -D"com.sun.management.jmxremote.rmi.port"=9010 -D"com.sun.management.jmxremote.local.only"=false -D"com.sun.management.jmxremote.authenticate"=false -D"com.sun.management.jmxremote.ssl"=false -jar JVMBenchmark-1.0-SNAPSHOT.jar