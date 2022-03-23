
data "http" "minecraft_versions_manifest" {
  url = "https://launchermeta.mojang.com/mc/game/version_manifest.json"

  request_headers = {
    Accept = "application/json"
  }
}

locals {
  versions_manifest = jsondecode(data.http.minecraft_versions_manifest.body)
  minecraft_version = var.minecraft_version == "latest" ? lookup(local.versions_manifest.latest, var.type) : var.minecraft_version
  versions          = [for e in local.versions_manifest.versions : e if e.type == var.type]
  result            = element([for version in local.versions : version if version.id == local.minecraft_version], 0)
}

data "http" "version_properties" {
  url = local.result.url
  request_headers = {
    Accept = "application/json"
  }
}
