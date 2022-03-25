# Minecraft server version link Terraform module

Terraform module to return the server url for a minecraft server jar

## Usage

Default will take the latest release

```hcl
module "minecraft_version" {
  source = "github.com/ALibrada/terraform-minecraft-version.git?ref=main"
  }
}
```

You can specify the version

```hcl
module "minecraft_version" {
  source = "github.com/ALibrada/terraform-minecraft-version.git?ref=main"
  minecraft_version = "1.18.1"
  }
}
```
