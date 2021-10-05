variable "metadata_labels" {
  type        = map(string)
  description = "Metadata labels to use."
}

variable "eks_metadata_tags" {
  type        = map(any)
  description = "EKS metadata tags to use."
}

variable "cluster_name" {
  type        = string
  description = "Cluster name of the EKS cluster."
}

variable "node_group_name" {
  type        = string
  description = "Name for this node pool."
}

variable "role_arn" {
  type        = string
  description = "ARN of the IAM role for worker nodes."
}

variable "instance_types" {
  type        = set(string)
  description = "Set of AWS instance types to use for nodes."
}

variable "desired_size" {
  type        = string
  description = "Desired number of worker nodes."
}

variable "max_size" {
  type        = string
  description = "Maximum number of worker nodes."
}

variable "min_size" {
  type        = string
  description = "Minimum number of worker nodes."
}

variable "disk_size" {
  type        = string
  default     = "20"
  description = "Will set the volume size of the root device"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of VPC subnet IDs to use for nodes."
}

variable "depends-on-aws-auth" {
  type        = map(string)
  description = "Used as a depends_on shim to first create the aws-auth configmap before creating the node_pool."
}
