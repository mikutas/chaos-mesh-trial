cluster:
	k3d cluster create -p "8081:80@loadbalancer"

chaos-mesh:
	curl -sSL https://mirrors.chaos-mesh.org/v2.5.1/install.sh | bash -s -- --k3s && \
	kubectl apply -f ingress.yaml

destroy:
	k3d cluster delete
