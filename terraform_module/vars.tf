# AWS and Jenkins variable
variable "AWS_REGION" {
  default = "ap-northeast-2"
}

variable "BUILD_NUMBER" {
  description = "this variable will be passed from jenkins"
}

variable "BACKEND_IMAGE" {
  description = "this variable will be passed from jenkins"
}

variable "JENKINS_WORKSPACE_PATH" {
  description = "this variable will be passed from jenkins"
}


# frontend module variable
variable "BUCKET_NAME" {
  type        = string
  description = "The name of the main bucket"
  # default = "heungbot.store"
  default = "heungbot-cdn-origin-bucket"
}

variable "DOMAIN_NAME" {
  type        = string
  description = "The domain name for the website."
  default     = "heungbot.store"
}

variable "FRONTEND_DIR_PATH" {
  description = "this variable will be passed from jenkins pipeline"
  default     = "../frontend/build"
}

variable "MAIN_INDEX_HTML_PATH" {
  default = "./frontend-cloudfront/main_index/index.html"
}

variable "SERVICE_FILE_PATH" {
  default = "/Users/bangdaeseonsaeng/Desktop/project/04_main_project/terraform_module/env/service.json"
}

# aurora module variable

variable "MASTER_USERNAME" {
  default = "admin"
}

variable "MASTER_USER_PASSWORD" {
  default = "heungbot2143"
}

variable "PARAMETER_GROUP_FAMILY" {
  default = "aurora-mysql5.7"
}
variable "DB_PORT" {
  default = 3306
}

variable "CACHE_PORT" {
  default = 11211
}
# backend ecs module
variable "BACKEND_CONTAINER_PORT" {
  default = 80
}

variable "BACKEND_HOST_PORT" {
  default = 80
}
