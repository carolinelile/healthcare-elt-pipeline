output "bucket_name" {
  description = "GCS bucket name for FHIR data"
  value       = google_storage_bucket.fhir_raw_data.name
}

output "vm_external_ip" {
  description = "External IP address of the VM"
  value       = google_compute_instance.elt_vm.network_interface[0].access_config[0].nat_ip
}

output "service_account_email" {
  description = "Service account email for the VM"
  value       = google_service_account.elt_service_account.email
}
