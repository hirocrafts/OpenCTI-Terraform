variable "tags" {
  type = object({
    ProjectOwner = string
    Customer     = string
    Project      = string
    Environment  = string
    Terraform    = bool
  })
  description = "The set of tags required for AWS resources."
}

variable "resource_prefix" {
  type        = string
  description = "Prefix for AWS Resources."
}

###################################
# -- OpenCTI Connector General -- #
###################################

variable "opencti_version" {
  type        = string
  description = "The version tag of the OpenCTI docker image. Examples include latest or 5.2.4."
}

variable "opencti_platform_url" {
  type        = string
  description = "The internal Load Balancer endpoint for OpenCTI Platform."
}

variable "opencti_connector_kms_arn" {
  type        = string
  description = "The ARN value of the KMS Key used to encrypt Connector API Key Secrets."
}

variable "log_retention" {
  type        = string
  description = "The number of days that CloudWatch Logs are retained for."
}

variable "opencti_platform_port" {
  type        = number
  description = "The port that OpenCTI Platform will run on."
}

###################################
# -- OpenCTI Connector OpenCTI -- #
###################################

variable "ex_imp_opencti_connector_name" {
  type        = string
  description = "The name given to the OpenCTI External Import connector."
}

variable "ex_imp_opencti_connector_image" {
  type        = string
  description = "The location on DockerHub of the OpenCTI External Import connector."
}

variable "ex_imp_opencti_cron_job" {
  type = object({
    start = string,
    stop  = string
  })
  description = "The Cron Start and Cron Stop for AWS EventBridge."
}

#################################
# -- OpenCTI Connector Mitre -- #
#################################

variable "ex_imp_mitre_connector_name" {
  type        = string
  description = "The name given to the Mitre External Import connector."
}

variable "ex_imp_mitre_connector_image" {
  type        = string
  description = "The location on DockerHub of the Mitre External Import connector."
}

variable "ex_imp_mitre_cron_job" {
  type = object({
    start = string,
    stop  = string
  })
  description = "The Cron Start and Cron Stop for AWS EventBridge."
}

###############################
# -- OpenCTI Connector CVE -- #
###############################

variable "ex_imp_cve_connector_name" {
  type        = string
  description = "The name given to the CVE External Import connector."
}

variable "ex_imp_cve_connector_image" {
  type        = string
  description = "The location on DockerHub of the CVE External Import connector."
}

variable "ex_imp_cve_cron_job" {
  type = object({
    start = string,
    stop  = string
  })
  description = "The Cron Start and Cron Stop for AWS EventBridge."
}