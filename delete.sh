###########################
# Deleting infrastructure #
###########################

rm team-a-infra/cluster.yaml

git add .

git commit -m "Remove the cluster"

git push

# In the second terminal
unset KUBECONFIG

# In the second terminal
kubectl get clusters,nodegroup,iamroles,iamrolepolicyattachments,vpcs,securitygroups,subnets,internetgateways,routetables,providerconfigs

# Wait until all the resources are removed

###########
# Destroy #
###########

rm -rf team-a-apps

rm -rf team-a-app-reqs

rm production/team-a-apps.yaml

rm production/team-a-app-reqs.yaml

git add .

git commit -m "Revert"

git push

minikube delete
