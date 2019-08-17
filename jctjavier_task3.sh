#!/bin/bash
clear

echo 'Apache Benchmark script starts now. Task 3 for IOVIO TC'
echo 'by: jctjavier'

sudo apt-get update
sudo apt-get -y install apache2-utils
sudo apt-get -y install gnuplot
sudo apt-get -y install feh

echo '# output as png image 
set terminal png

# save file to "benchmark.png"
set output "benchmark.png"

# graph title
set title "ab -n 2 -c 10 -g out.data https://iovio.com/"

#nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

#x-axis label
set xlabel "request"

#y-axis label
set ylabel "response time (ms)"

#plot data from "out.data" using column 9 with smooth sbezier lines
plot "out.data" using 9 smooth sbezier with lines title "iovio.com"' >> apache-benchmark.p

ab -c 2 -n 10 -g out.data https://iovio.com/

gnuplot apache-benchmark.p

feh benchmark.png

