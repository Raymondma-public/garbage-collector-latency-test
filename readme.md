# Background
* This repo is intended to let you try out different garbage collector

# Prerequisite
* Install the jdk you want to test
* Edit `run.sh` to modify your jdk paths

# Execute
* Run `./run.sh "test-case-name"` to
  * e.g. `./run.sh "test-gc-1"` 
* The results will be generated under `results/test-case-name`

# Visualize
* Run `HistogramLogAnalyzer-1.0.4-SNAPSHOT.jar`
* Drag the `.hlog` files under your test into Histogram Log Analyzer to visualize and analyze the result

# Reference
* Azul Platform Prime download
  * https://www.azul.com/products/prime/stream-download/
* Azul jHiccup
  * https://www.azul.com/products/components/jhiccup/
* Histogram Log Analyzer
  * https://github.com/HdrHistogram/HistogramLogAnalyzer