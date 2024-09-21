# llm-benchmark
This code consist helm charts for llm bench marking.

step1: create configmap
 
 *kubectl create -f configmap.yaml*

step2: Need to copy paste hugginface and openapi key in configmap.yaml and also openkey in hallucination values.yaml

step3: To  deploy detectors and mongo

*./run.sh*

step4: After deploying whole infrs run following command to deploy benchmark

*kubectl create -f benchmark.yaml*

To check the output 

*kubectl logs -f <podid> -c llm-container*