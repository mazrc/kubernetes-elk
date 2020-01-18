helm del --purge elastic-stack
helm del --purge kube-state-metrics
helm del --purge elastic-metricbeat
kubectl delete pvc -l release=elastic-stack
kubectl delete ns elk
sudo kill $(sudo lsof -t -i:5601)