# exaBGP_OpenShift

## Synopsis
One of the critical scaling points for OpenShift is scaling traffic that is ingressing into the cluster.  Historically this has been scaled by adding more router nodes and placing them behind a load-balancer/ADC.

The main drawback to this scaling mechanism is that it can be costly as it requires an enterprise-grade load-balancer/ADC that can be configured/scaled to the requirements of the cluster.

The purpose of this project is to prove scaling can be done without the need for additional expensive network components.

We can achieve this by running exaBGP in containers pinned to router nodes announcing an anycast address.  This allows for n-scale over well established scaling mechanisms (BGP and anycast).

As most organizations that require any kind of data center scale have routers our layer 3 switches running in their enviornment already, this prevents the need for procuring additional hardware to scale the OpenShift environment.


![](images/scaling_with_adc.png)


### How to build from docker file
Navigate to the Docker file dir and execute:

`docker build -t exabgp .`