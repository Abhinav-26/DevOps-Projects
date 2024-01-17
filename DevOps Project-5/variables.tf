variable "project_id" {
  description = "Your GCP Project ID"
}

variable "sa_token" {
    description = "Your ServiceAccount File Path"
}

variable "region" {
  description = "GCP region where resources will be created"
  default     = "us-central1"
}

variable "gke_cluster_name" {
  description = "Name of your existing GKE cluster"
}

variable "github_repo_url" {
  description = "URL of your GitHub repository"
}

variable "cloud_build_trigger_name" {
  description = "Name for the Cloud Build trigger"
  default     = "github-trigger"
}

variable "dockerfile_path" {
  description = "Path to the Dockerfile in the GitHub repository"
  default     = "./"
}

variable "k8s_manifests_directory" {
  description = "Path to the Kubernetes manifests directory"
  default     = "/kubernetes/prod"
}

# variable "github_repo_name" {
#   description = "Name of the GitHub repository"
# }

# default     = basename(var.github_repo_url)