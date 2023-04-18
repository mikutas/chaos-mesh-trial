# https://k3d.io/v5.4.9/usage/exposing_services/
cluster:
	k3d cluster create -p "8081:80@loadbalancer"

chaos-mesh:
	helmfile -f helmfile.yaml apply

destroy:
	k3d cluster delete
