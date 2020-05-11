#!/bin/bash

export SPARK_HOME="/home/$USER/software/spark-2.4.5-bin-hadoop2.7"
export SPARK_CONF_DIR=$SPARK_HOME/conf
export PATH=$SPARK_HOME:$PATH

master=`cat $PBS_NODEFILE | uniq | head -n 1`
echo $master > $SPARK_HOME/conf/master

cat $PBS_NODEFILE | uniq | tail -n +2 > $SPARK_HOME/conf/slaves

# get num node info
N=`qstat -an1 $PBS_JOBID | awk 'END {print $6}'`

# get per-node memory info
totalRAMtxt=`qstat -an1 $PBS_JOBID | awk 'END {print $8}'`
totalRAMnum=${totalRAMtxt%??}
oneRAM=`expr $totalRAMnum / $N - 1`G

# get per-node core info
totalCORESnum=`qstat -an1 $PBS_JOBID | awk 'END {print $7}'`
oneCORES=`expr $totalCORESnum / $N`

# get num workers
workers=`expr $N - 1`


echo "Launching Spark cluster with the following parameters:"
echo "Master Node:" ${master}
echo "Slave Nodes:"
cat $SPARK_HOME/conf/slaves
echo "Temporary dir:" $TMPDIR
echo "Memory per worker (GB):" $oneRAM
echo "Cores per worker:" $oneCORES
echo "Num workers:" $workers

command=". $SPARK_HOME/sbin/start-all.sh -h $master -d $TMPDIR -m ${oneRAM} -c $workers"
echo $command
$command
