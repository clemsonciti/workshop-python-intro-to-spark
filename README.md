# Introduction to Spark for fast in-memory big data processing using Python

This full-day workshop aims to provide participants with a detailed knowledge on:

- The concepts of MapReduce programming paradigm
- How Apache Spark leverages these concepts to process massive amount of data in-memory

By the end of the workshop, the participants are expected to be able to 

- understand the data structure and programming model for Spark
- be able to interact and perform data analytics with data stored in HDFS via Spark notebooks

Having an account on Palmetto is required for this workshop. It is recommended that participants 
either have attended or are comfortable with materials in 
the [Hadoop workshop](https://github.com/clemsonciti/intro-to-hadoop-python)

This workshop will be delivered via [JupyterHub](https://www.palmetto.clemson.edu/jupyterhub). When you 
start your Jupyter server for the first time, you need to open a terminal and edit the files `~/.jhubrc`
 and `~/.bashrc` to include the following lines *(you only need the first line for `.jhubrc` and both lines
 for `.bashrc`)*:
 
 ```
 module load hdp
 cypress-kinit
 ```

If you need to register for a new account, please make sure that you specify the followings
in the new account registration form:
- Account Type: Educational
- Course Information: Introduction to Spark for fast in-memory big data processing using Python
- Check the box on *Jobs that require distributed in-memory computing (Spark)* 

A new account can be requested at https://citi.sites.clemson.edu/new-account

Information about how to get authenticated in order to interact with Clemson
University's Hadoop cluster, Cypress, can be found at:
https://www.palmetto.clemson.edu/hadoop/pages/userguide.html#access
