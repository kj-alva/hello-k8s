Enabling TLS

Included the secrets.sh script to pull TLS certificate and key from SSM at runtime to avoid keeping the certificates in plain text.

Uncomment affinity attribute block to make the application resilient to worker node failures. 

TODO:
ClusterRole
ClusterRoleBinding
HorizontalPodAutoscaler
cert-manager
Update Ingress to Konghq
Setup Hashicorp Vault and Integrate with Vault