echo "deploying helm charts"
echo " "

cd $(pwd)/helm-mongodb/ && helm install -f values.yaml helm-mongodb . && cd ..
cd $(pwd)/helm-mongo-express/ && helm install -f values.yaml helm-mongo-express . && cd ..
cd $(pwd)/helm-hallucination/ && helm install -f values.yaml helm-hallucination . && cd ..
cd $(pwd)/helm-toxicity/ && helm install -f values.yaml helm-toxicity . && cd ..
cd $(pwd)/helm-privacy/ && helm install -f values.yaml helm-privacy . && cd ..
cd $(pwd)/helm-relevance/ && helm install -f values.yaml helm-relevance . && cd ..


echo "Following Helm charts deployed"

helm list

