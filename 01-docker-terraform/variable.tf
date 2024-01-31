variable "credentials" {
  description = "My Credentials"
  default     = "C:\\Users\\hpute\\Desktop\\terrademo\\keys\\my-creds.json"
}

variable "region" {
  description = "Region"
  default     = "asia-southeast1"
}

variable "project" {
  description = "Project"
  default     = "subtle-isotope-412719"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "subtle-isotope-412719-terra-bucket"
}


variable "gcs_storage_class" {
  description = "Bucket Storage CLass"
  default     = "STANDARD"
}