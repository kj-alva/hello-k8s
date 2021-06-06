Enabling TLS:

Included the secrets.sh script to pull TLS certificate and key from SSM at runtime to avoid keeping the certificates in plain text.

Uncomment the tls block from Ingress resource config.

Uncomment affinity attribute block to make the application resilient to worker node failures. 

Setup:

- Please run the below command to create the resources.

    kubectl apply -f app-setup.yml

- Run the below command to verify if the application can be accessed.

    curl http://hello-world.example.com/env/hello-world/

TODO:
ClusterRole,
ClusterRoleBinding,
HorizontalPodAutoscaler,
cert-manager,
Add Istio Service Mesh,
Update Ingress to Konghq,
Setup Hashicorp Vault and Integrate with Vault
