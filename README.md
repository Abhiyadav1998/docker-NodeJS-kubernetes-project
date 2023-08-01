This Helm chart deploys a Node.js application as a Kubernetes Deployment and exposes it as a NodePort service.

Prerequisites

Before running this application, make sure you have the following prerequisites installed:

- Kubernetes cluster (e.g., Minikube, Docker Desktop with Kubernetes enabled)
- Helm (v3 or higher)

Installation

To install the Node Hello application, follow these steps:
1. 	Change into the chart directory
    ./HELM/node-hello
2. 	Customize the chart values:
   	Edit the values.yaml file to modify the deployment configuration, such as the number of replicas, image repository, and ports.

3. Deploy the Helm chart:
	helm install node-hello .
   This command will install the Node Hello application in your Kubernetes cluster.

Accessing the Application
To access the Node Hello application, follow these steps:
1.	Get the nodePort.
	kubectl get svc node-hello
	Note down the NODE_PORT value from the output.	
2.	Access the application:
	Open your web browser and navigate to http://localhost:<NODE_PORT>. Replace <NODE_PORT> with the value you noted down in the previous step.

	You should see the Node Hello application running on yourlocal machine.	


