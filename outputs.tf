output "version" {
  value = local.result.id
}

output "download_link" {
  value = jsondecode(data.http.version_properties.body).downloads.server.url
}
