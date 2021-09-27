variable "availability_zone" {
  type = string
}

variable "node_group_size" {
  type = object({
    desired_size = number
    min_size     = number
    max_size     = number
  })
}

variable "cluster_context" {
  type = object({
    ami_release_version        = string
    ami_type                   = string
    az_abbreviation_type       = string
    cluster_autoscaler_enabled = bool
    cluster_name               = string
    create_before_destroy      = bool
    disk_encryption_enabled    = bool
    disk_size                  = number
    instance_types             = list(string)
    capacity_type              = string
    kubernetes_labels          = map(string)
    kubernetes_taints          = map(string)
    kubernetes_version         = string
    module_depends_on          = any
    resources_to_tag           = list(string)
    subnet_type_tag_key        = string
    vpc_id                     = string
  })
}
