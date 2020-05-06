#!/bin/bash

wget http://www.gtlib.gatech.edu/pub/apache/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz
mkdir -p ~/software/
tar -xzf spark-2.4.5-bin-hadoop2.7.tgz -C ~/software/
rm spark-2.4.5-bin-hadoop2.7.tgz