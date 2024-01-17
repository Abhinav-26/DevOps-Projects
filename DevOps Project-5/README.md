# Automate CloudBuild Triggers using Terraform

In this automation, the terraform script will automatically create a cloudbuild trigger with the defined configurations for the repository given and deploy it to GKE Cluster, defined in the terraform script.

NOTE: The project will create a trigger for repository given, but in case of Cloud Build Repository V1, it;s not possible to automactially connect with the Repository. It's one of the limitation of V1, and hence V2 was introduced enhancing API compatibility. 

FYI: The project is still in Development!!
