#!/bin/bash

export SPARK_HOME="/home/$USER/software/spark-2.4.5-bin-hadoop2.7"
export SPARK_CONF_DIR=$SPARK_HOME/conf

export PATH=$SPARK_HOME:$PATH

echo "Stopping Spark cluster:"
. $SPARK_HOME/sbin/stop-all.sh -h $master -d $TMPDIR


